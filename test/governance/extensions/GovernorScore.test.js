const { BN, constants, expectEvent } = require('@openzeppelin/test-helpers');
const ethSigUtil = require('eth-sig-util');
const Wallet = require('ethereumjs-wallet').default;
const { EIP712Domain } = require('../../helpers/eip712');
const { fromRpcSig } = require('ethereumjs-util');

const {
  runGovernorWorkflow,
} = require('../GovernorWorkflow.behavior');

const {
  shouldSupportInterfaces,
} = require('../../utils/introspection/SupportsInterface.behavior');

const Token = artifacts.require('ERC20VotesMock');
const Governor = artifacts.require('GovernanceScoreMock');
const CallReceiver = artifacts.require('CallReceiverMock');

contract('Governance', function (accounts) {
  const [ owner, proposer, voter1, voter2 ] = accounts;

  const name = 'OZ-Governance';
  const version = '1';
  const tokenName = 'MockToken';
  const tokenSymbol = 'MTKN';
  const tokenSupply = web3.utils.toWei('100');

  beforeEach(async function () {
    this.owner = owner;
    this.token = await Token.new(tokenName, tokenSymbol);
    this.mock = await Governor.new(name, this.token.address, 4, 16, 10);
    this.receiver = await CallReceiver.new();
    await this.token.mint(owner, tokenSupply);
    await this.token.delegate(voter1, { from: voter1 });
    await this.token.delegate(voter2, { from: voter2 });
  });

  shouldSupportInterfaces([
    'ERC165',
    'Governor',
  ]);

  it('deployment check', async function () {
    expect(await this.mock.name()).to.be.equal(name);
    expect(await this.mock.token()).to.be.bignumber.equal(this.token.address);
    expect(await this.mock.votingDelay()).to.be.bignumber.equal('4');
    expect(await this.mock.votingPeriod()).to.be.bignumber.equal('16');
    expect(await this.mock.quorum(0)).to.be.bignumber.equal('0');
    expect(await this.mock.COUNTING_MODE()).to.be.equal('support=score&quorum=score');
    expect(await this.mock.maxScore()).to.be.bignumber.equal('100');
    expect(await this.mock.requiredScore()).to.be.bignumber.equal('50');
  });

  describe('scenario', function () {
    describe('nominal', function () {
      beforeEach(async function () {
        this.settings = {
          proposal: [
            [ this.receiver.address ],
            [ web3.utils.toWei('0') ],
            [ this.receiver.contract.methods.mockFunction().encodeABI() ],
            '<proposal description>',
          ],
          proposer,
          tokenHolder: owner,
          voters: [
            { voter: voter1, weight: web3.utils.toWei('5'), support: new BN('100') },
            { voter: voter2, weight: web3.utils.toWei('5'), support: new BN('40')  },
          ],
        };
        this.votingDelay = await this.mock.votingDelay();
        this.votingPeriod = await this.mock.votingPeriod();
      });

      afterEach(async function () {
        expect(await this.mock.hasVoted(this.id, owner)).to.be.equal(false);
        expect(await this.mock.hasVoted(this.id, voter1)).to.be.equal(true);
        expect(await this.mock.hasVoted(this.id, voter2)).to.be.equal(true);

        const votes = await this.mock.proposalVotes(this.id);

        expect(votes.supply).to.be.bignumber.equal(Object.values(this.settings.voters).reduce(
          (acc, { weight }) => acc.add(new BN(weight)),
          new BN('0'),
        ));

        expect(votes.score).to.be.bignumber.equal(Object.values(this.settings.voters).reduce(
          (acc, { weight, support }) => acc.add(new BN(weight).mul(support)),
          new BN('0'),
        ));

        expectEvent(
          this.receipts.propose,
          'ProposalCreated',
          {
            proposalId: this.id,
            proposer,
            targets: this.settings.proposal[0],
            // values: this.settings.proposal[1].map(value => new BN(value)),
            signatures: this.settings.proposal[2].map(() => ''),
            calldatas: this.settings.proposal[2],
            startBlock: new BN(this.receipts.propose.blockNumber).add(this.votingDelay),
            endBlock: new BN(this.receipts.propose.blockNumber).add(this.votingDelay).add(this.votingPeriod),
            description: this.settings.proposal[3],
          },
        );

        this.receipts.castVote.filter(Boolean).forEach(vote => {
          const { voter } = vote.logs.find(Boolean).args;
          expectEvent(
            vote,
            'VoteCast',
            this.settings.voters.find(({ address }) => address === voter),
          );
        });

        expectEvent(
          this.receipts.execute,
          'ProposalExecuted',
          { proposalId: this.id },
        );

        expectEvent.inTransaction(
          this.receipts.execute.transactionHash,
          this.receiver,
          'MockFunctionCalled',
        );
      });
      runGovernorWorkflow();
    });

    describe('vote with signature', function () {
      beforeEach(async function () {
        const chainId = await web3.eth.getChainId();
        // generate voter by signature wallet
        const voterBySig = Wallet.generate();
        this.voter = web3.utils.toChecksumAddress(voterBySig.getAddressString());
        // use delegateBySig to enable vote delegation for this wallet
        const { v, r, s } = fromRpcSig(ethSigUtil.signTypedMessage(
          voterBySig.getPrivateKey(),
          {
            data: {
              types: {
                EIP712Domain,
                Delegation: [
                  { name: 'delegatee', type: 'address' },
                  { name: 'nonce', type: 'uint256' },
                  { name: 'expiry', type: 'uint256' },
                ],
              },
              domain: { name: tokenName, version: '1', chainId, verifyingContract: this.token.address },
              primaryType: 'Delegation',
              message: { delegatee: this.voter, nonce: 0, expiry: constants.MAX_UINT256 },
            },
          },
        ));
        await this.token.delegateBySig(this.voter, 0, constants.MAX_UINT256, v, r, s);
        // prepare signature for vote by signature
        const signature = async (message) => {
          return fromRpcSig(ethSigUtil.signTypedMessage(
            voterBySig.getPrivateKey(),
            {
              data: {
                types: {
                  EIP712Domain,
                  Ballot: [
                    { name: 'proposalId', type: 'uint256' },
                    { name: 'support', type: 'uint8' },
                  ],
                },
                domain: { name, version, chainId, verifyingContract: this.mock.address },
                primaryType: 'Ballot',
                message,
              },
            },
          ));
        };

        this.settings = {
          proposal: [
            [ this.receiver.address ],
            [ web3.utils.toWei('0') ],
            [ this.receiver.contract.methods.mockFunction().encodeABI() ],
            '<proposal description>',
          ],
          proposer,
          tokenHolder: owner,
          voters: [
            { voter: this.voter, signature, weight: web3.utils.toWei('10'), support: new BN('100') },
          ],
        };
        this.votingDelay = await this.mock.votingDelay();
        this.votingPeriod = await this.mock.votingPeriod();
      });

      afterEach(async function () {
        expect(await this.mock.hasVoted(this.id, owner)).to.be.equal(false);
        expect(await this.mock.hasVoted(this.id, voter1)).to.be.equal(false);
        expect(await this.mock.hasVoted(this.id, voter2)).to.be.equal(false);
        expect(await this.mock.hasVoted(this.id, this.voter)).to.be.equal(true);

        const votes = await this.mock.proposalVotes(this.id);

        expect(votes.supply).to.be.bignumber.equal(Object.values(this.settings.voters).reduce(
          (acc, { weight }) => acc.add(new BN(weight)),
          new BN('0'),
        ));

        expect(votes.score).to.be.bignumber.equal(Object.values(this.settings.voters).reduce(
          (acc, { weight, support }) => acc.add(new BN(weight).mul(support)),
          new BN('0'),
        ));

        expectEvent(
          this.receipts.propose,
          'ProposalCreated',
          {
            proposalId: this.id,
            proposer,
            targets: this.settings.proposal[0],
            // values: this.settings.proposal[1].map(value => new BN(value)),
            signatures: this.settings.proposal[2].map(() => ''),
            calldatas: this.settings.proposal[2],
            startBlock: new BN(this.receipts.propose.blockNumber).add(this.votingDelay),
            endBlock: new BN(this.receipts.propose.blockNumber).add(this.votingDelay).add(this.votingPeriod),
            description: this.settings.proposal[3],
          },
        );

        this.receipts.castVote.filter(Boolean).forEach(vote => {
          const { voter } = vote.logs.find(Boolean).args;
          expectEvent(
            vote,
            'VoteCast',
            this.settings.voters.find(({ address }) => address === voter),
          );
        });

        expectEvent(
          this.receipts.execute,
          'ProposalExecuted',
          { proposalId: this.id },
        );

        expectEvent.inTransaction(
          this.receipts.execute.transactionHash,
          this.receiver,
          'MockFunctionCalled',
        );
      });
      runGovernorWorkflow();
    });

    describe('over max score', function () {
      beforeEach(async function () {
        this.settings = {
          proposal: [
            [ this.receiver.address ],
            [ web3.utils.toWei('0') ],
            [ this.receiver.contract.methods.mockFunction().encodeABI() ],
            '<proposal description>',
          ],
          tokenHolder: owner,
          voters: [
            {
              voter: voter1,
              weight: web3.utils.toWei('10'),
              support: new BN('255'),
              error: 'GovernorCountingScore: voting over the maximum score',
            },
          ],
          steps: {
            wait: { enable: false },
            execute: { enable: false },
          },
        };
      });
      runGovernorWorkflow();
    });

    describe('quorum not reached', function () {
      beforeEach(async function () {
        this.settings = {
          proposal: [
            [ this.receiver.address ],
            [ web3.utils.toWei('0') ],
            [ this.receiver.contract.methods.mockFunction().encodeABI() ],
            '<proposal description>',
          ],
          tokenHolder: owner,
          voters: [
            { voter: voter1, weight: web3.utils.toWei('1'), support: new BN('100') },
          ],
          steps: {
            execute: { error: 'Governor: proposal not successful' },
          },
        };
      });
      runGovernorWorkflow();
    });

    describe('score not reached', function () {
      beforeEach(async function () {
        this.settings = {
          proposal: [
            [ this.receiver.address ],
            [ web3.utils.toWei('0') ],
            [ this.receiver.contract.methods.mockFunction().encodeABI() ],
            '<proposal description>',
          ],
          tokenHolder: owner,
          voters: [
            { voter: voter1, weight: web3.utils.toWei('1'), support: new BN('10') },
          ],
          steps: {
            execute: { error: 'Governor: proposal not successful' },
          },
        };
      });
      runGovernorWorkflow();
    });
  });
});
