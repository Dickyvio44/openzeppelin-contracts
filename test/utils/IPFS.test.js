const { expect } = require('chai');

const IPFSMock = artifacts.require('IPFSMock');

contract('IPFS', function (accounts) {
  beforeEach(async function () {
    this.ipfs = await IPFSMock.new();
  });

  it('toHash', async function () {
    expect(await this.ipfs.toHash('0x47858569385046d7f77f5032ae41e511b40a7fbfbd315503ba3d99a6dc885f2b'))
      .to.be.equal('QmT9qk3CRYbFDWpDFYeAv8T8H1gnongwKhh5J68NLkLir6');
  });
});
