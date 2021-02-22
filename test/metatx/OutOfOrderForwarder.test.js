const ethSigUtil = require('eth-sig-util');
const Wallet = require('ethereumjs-wallet').default;
const { EIP712Domain } = require('../helpers/eip712');

const { expectRevert, constants } = require('@openzeppelin/test-helpers');
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
        nonce: web3.utils.toBN(await this.forwarder.getNonce(this.sender)).toString(),
        data: '0x',
        validUntil: web3.utils.toBN(await web3.eth.getBlockNumber()).addn(1).toString(),
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
      context('invalid nonce (maintimeline)', function () {
        beforeEach(async function () {
          this.req.nonce = web3.utils.toBN(this.req.nonce).addn(1).toString();
        });
        it('do not verify wrong nonce', async function () {
          expect(await this.forwarder.verify(this.req, this.sign()))
            .to.be.equal(false);
        });
        it('do not execute wrong nonce', async function () {
          await expectRevert(
            this.forwarder.execute(this.req, this.sign()),
            'OutOfOrderForwarder: invalid nonce',
          );
        });
      });

      context('new timeline', function () {
        beforeEach(async function () {
          this.req.nonce = web3.utils.toBN(1).shln(128).addn(0).toString(); // timeline #1, nonce #0
        });
        it('verify nonce on independant timeline', async function () {
          expect(await this.forwarder.verify(this.req, this.sign()))
            .to.be.equal(true);
        });
        it('execute nonce on independant timeline', async function () {
          await this.forwarder.execute(this.req, this.sign());
        });
      });

      context('invalid nonce on new timeline', function () {
        beforeEach(async function () {
          this.req.nonce = web3.utils.toBN(1).shln(128).addn(1).toString(); // timeline #1, nonce #0
        });
        it('verify nonce on independant timeline', async function () {
          expect(await this.forwarder.verify(this.req, this.sign()))
            .to.be.equal(false);
        });
        it('execute nonce on independant timeline', async function () {
          await expectRevert(
            this.forwarder.execute(this.req, this.sign()),
            'OutOfOrderForwarder: invalid nonce',
          );
        });
      });
    });

    context('validUntil', function () {
      context('after deadline', function () {
        beforeEach(async function () {
          this.req.validUntil = web3.utils.toBN(1).toString();
        });
        it('verify when deadline is not set', async function () {
          expect(await this.forwarder.verify(this.req, this.sign()))
            .to.be.equal(false);
        });
        it('execute when deadline is not set', async function () {
          await expectRevert(
            this.forwarder.execute(this.req, this.sign()),
            'OutOfOrderForwarder: invalid deadline',
          );
        });
      });

      context('any time', function () {
        beforeEach(async function () {
          this.req.validUntil = web3.utils.toBN(0).toString();
        });
        it('not valid', async function () {
          expect(await this.forwarder.verify(this.req, this.sign()))
            .to.be.equal(true);
        });
        it('execution reverts', async function () {
          await this.forwarder.execute(this.req, this.sign());
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
          expect(await this.forwarder.verify({ ...this.req, nonce: web3.utils.toBN(this.req.nonce).addn(1).toString() }, this.sign()))
            .to.be.equal(false);
        });
        it('tampered data', async function () {
          expect(await this.forwarder.verify({ ...this.req, data: '0x1742' }, this.sign()))
            .to.be.equal(false);
        });
        it('tampered validUntil', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, validUntil: 0 }, this.sign()),
            'OutOfOrderForwarder: invalid signature',
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
            .to.be.bignumber.equal(web3.utils.toBN(web3.utils.toBN(this.req.nonce).addn(1).toString()));
        });
      });

      context('invalid signature', function () {
        it('tampered from', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, from: accounts[0] }, this.sign()),
            'OutOfOrderForwarder: invalid signature',
          );
        });
        it('tampered to', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, to: accounts[0] }, this.sign()),
            'OutOfOrderForwarder: invalid signature',
          );
        });
        it('tampered value', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, value: web3.utils.toWei('1') }, this.sign()),
            'OutOfOrderForwarder: invalid signature',
          );
        });
        it('tampered nonce', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, nonce: web3.utils.toBN(this.req.nonce).add(web3.utils.toBN(1).shln(128)).toString() }, this.sign()),
            'OutOfOrderForwarder: invalid signature',
          );
        });
        it('tampered data', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, data: '0x1742' }, this.sign()),
            'OutOfOrderForwarder: invalid signature',
          );
        });
        it('tampered validUntil', async function () {
          await expectRevert(
            this.forwarder.execute({ ...this.req, validUntil: web3.utils.toBN(this.req.validUntil).addn(1).toString() }, this.sign()),
            'OutOfOrderForwarder: invalid signature',
          );
        });
        it('tampered signature', async function () {
          const tamperedsign = web3.utils.hexToBytes(this.sign());
          tamperedsign[42] ^= 0xff;
          await expectRevert(
            this.forwarder.execute(this.req, web3.utils.bytesToHex(tamperedsign)),
            'OutOfOrderForwarder: invalid signature',
          );
        });
      });
    });
  });
});
