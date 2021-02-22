const ethSigUtil = require('eth-sig-util');
const Wallet = require('ethereumjs-wallet').default;
const { EIP712Domain } = require('../helpers/eip712');

const { BN, expectRevert, constants } = require('@openzeppelin/test-helpers');
const { expect } = require('chai');

const OutOfOrderForwarder = artifacts.require('OutOfOrderForwarder');

const name = 'OutOfOrderForwarder';
const version = '0.0.1';

contract('OutOfOrderForwarder', function (accounts) {
  beforeEach(async function () {
    this.forwarder = await OutOfOrderForwarder.new();
    this.domain = {
      name,
      version,
      chainId: await web3.eth.getChainId(),
      verifyingContract: this.forwarder.address,
    };
    this.types = {
      EIP712Domain,
      ForwardRequest: [
        { name: 'from', type: 'address' },
        { name: 'to', type: 'address' },
        { name: 'value', type: 'uint256' },
        { name: 'gas', type: 'uint256' },
        { name: 'nonce', type: 'uint256' },
        { name: 'data', type: 'bytes' },
        { name: 'validUntil', type: 'uint256' },
      ],
    };
  });

  context('with message', function () {
    beforeEach(async function () {
      this.wallet = Wallet.generate();
      this.sender = web3.utils.toChecksumAddress(this.wallet.getAddressString());
      this.req = {
        from: this.sender,
        to: constants.ZERO_ADDRESS,
        value: '0',
        gas: '100000',
        nonce: Number(await this.forwarder.getNonce(this.sender)),
        data: '0x',
        validUntil: Number(await web3.eth.getBlockNumber()) + 1,
      };
      this.sign = () => ethSigUtil.signTypedMessage(
        this.wallet.getPrivateKey(),
        {
          data: {
            types: this.types,
            domain: this.domain,
            primaryType: 'ForwardRequest',
            message: this.req,
          },
        },
      );
    });

    context('nonce', function () {
      context('invalid nonce', function () {
        beforeEach(async function () {
          this.req.nonce += 1;
        });
        it('do not verify wrong nonce', async function () {
          expect(await this.forwarder.verify({ ...this.req, from: accounts[0] }, this.sign()))
            .to.be.equal(false);
        });
        it('do not execute wrong nonce', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, from: accounts[0] }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
      });

      context('independant timeline', function () {
        beforeEach(async function () {
          this.req.nonce = web3.utils.toHex(web3.utils.toBN(1).shln(128)); // timeline #1, nonce #0
          // this.req.nonce = (new BN(1)).shln(128).addn(0); // timeline #1, nonce #0
          this.skip() // NOT SIGNING PROPERLY
        });
        it('verify nonce on independant timeline', async function () {
          expect(await this.forwarder.verify({ ...this.req, from: accounts[0] }, this.sign()))
            .to.be.equal(true);
        });
        it('execute nonce on independant timeline', async function () {
          await this.forwarder.execute({ ...this.req, from: accounts[0] }, this.sign());
        });
      });
    });

    context('validUntil', function () {
      context('after deadline', function () {
        beforeEach(async function () {
          this.req.validUntil = 1;
        });
        it('verify when deadline is not set', async function () {
          expect(await this.forwarder.verify({ ...this.req, from: accounts[0] }, this.sign()))
            .to.be.equal(false);
        });
        it('execute when deadline is not set', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, from: accounts[0] }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
      });

      context('any time', function () {
        beforeEach(async function () {
          this.req.validUntil = 0;
          this.skip() // NOT SIGNING PROPERLY
        });
        it('not valid', async function () {
          expect(await this.forwarder.verify({ ...this.req, from: accounts[0] }, this.sign()))
            .to.be.equal(true);
        });
        it('execution reverts', async function () {
          await this.forwarder.execute({ ...this.req, from: accounts[0] }, this.sign());
        });
      });
    });

    context('verify', function () {
      context('valid signature', function () {
        beforeEach(async function () {
          expect(await this.forwarder.getNonce(this.req.from))
            .to.be.bignumber.equal(web3.utils.toBN(this.req.nonce));
        });

        it('success', async function () {
          expect(await this.forwarder.verify(this.req, this.sign())).to.be.equal(true);
        });

        afterEach(async function () {
          expect(await this.forwarder.getNonce(this.req.from))
            .to.be.bignumber.equal(web3.utils.toBN(this.req.nonce));
        });
      });

      context('invalid signature', function () {
        it('tampered from', async function () {
          expect(await this.forwarder.verify({ ...this.req, from: accounts[0] }, this.sign()))
            .to.be.equal(false);
        });
        it('tampered to', async function () {
          expect(await this.forwarder.verify({ ...this.req, to: accounts[0] }, this.sign()))
            .to.be.equal(false);
        });
        it('tampered value', async function () {
          expect(await this.forwarder.verify({ ...this.req, value: web3.utils.toWei('1') }, this.sign()))
            .to.be.equal(false);
        });
        it('tampered nonce', async function () {
          expect(await this.forwarder.verify({ ...this.req, nonce: this.req.nonce + 1 }, this.sign()))
            .to.be.equal(false);
        });
        it('tampered data', async function () {
          expect(await this.forwarder.verify({ ...this.req, data: '0x1742' }, this.sign()))
            .to.be.equal(false);
        });
        it('tampered validUntil', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, validUntil: 0 }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
        it('tampered signature', async function () {
          const tamperedsign = web3.utils.hexToBytes(this.sign());
          tamperedsign[42] ^= 0xff;
          expect(await this.forwarder.verify(this.req, web3.utils.bytesToHex(tamperedsign)))
            .to.be.equal(false);
        });
      });
    });

    context('execute', function () {
      context('valid signature', function () {
        beforeEach(async function () {
          expect(await this.forwarder.getNonce(this.req.from))
            .to.be.bignumber.equal(web3.utils.toBN(this.req.nonce));
        });

        it('success', async function () {
          await this.forwarder.execute(this.req, this.sign()); // expect to not revert
        });

        afterEach(async function () {
          expect(await this.forwarder.getNonce(this.req.from))
            .to.be.bignumber.equal(web3.utils.toBN(this.req.nonce + 1));
        });
      });

      context('invalid signature', function () {
        it('tampered from', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, from: accounts[0] }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
        it('tampered to', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, to: accounts[0] }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
        it('tampered value', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, value: web3.utils.toWei('1') }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
        it('tampered nonce', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, nonce: this.req.nonce + 1 }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
        it('tampered data', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, data: '0x1742' }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
        it('tampered validUntil', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, validUntil: 0 }, this.sign()),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
        it('tampered signature', async function () {
          const tamperedsign = web3.utils.hexToBytes(this.sign());
          tamperedsign[42] ^= 0xff;
          await expectRevert(
            this.forwarder.execute(this.req, web3.utils.bytesToHex(tamperedsign)),
            'OutOfOrderForwarder: signature does not match request',
          );
        });
      });
    });
  });
});
