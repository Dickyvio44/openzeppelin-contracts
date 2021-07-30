// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Counters.sol";

library ReplayProtection {
    using Counters for Counters.Counter;

    struct Nonces {
        mapping(address => Counters.Counter) _data;
    }

    function getNonce(Nonces storage nonces, address owner) internal view returns (uint256) {
        return nonces._data[owner].current();
    }

    function useNonce(Nonces storage nonces, address owner) internal returns (uint256 current) {
        Counters.Counter storage nonce = nonces._data[owner];
        current = nonce.current();
        nonce.increment();
    }

    function verifyAndConsumeNonce(Nonces storage nonces, address owner, uint256 idx) internal returns (bool) {
        return useNonce(nonces, owner) == idx;
    }

    struct MultiNonces {
        mapping(address => mapping(uint128 => Counters.Counter)) _data;
    }

    function getNonce(MultiNonces storage nonces, address owner) internal view returns (uint256) {
        return getNonce(nonces, owner, 0);
    }

    function getNonce(MultiNonces storage nonces, address owner, uint128 timeline) internal view returns (uint256) {
        return nonces._data[owner][timeline].current();
    }

    function useNonce(MultiNonces storage nonces, address owner) internal returns (uint256 current) {
        return useNonce(nonces, owner, 0);
    }

    function useNonce(MultiNonces storage nonces, address owner, uint128 timeline) internal returns (uint256 current) {
        Counters.Counter storage nonce = nonces._data[owner][timeline];
        current = nonce.current();
        nonce.increment();
    }

    function verifyAndConsumeNonce(MultiNonces storage nonces, address owner, uint256 idx) internal returns (bool) {
        return useNonce(nonces, owner, uint128(idx >> 128)) == idx % (1 << 128); // no need for safecast here.
    }
}
