// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/IPFS.sol";

contract IPFSMock {
    function toHash(uint256 value) public pure returns (string memory) {
        return IPFS.toHash(value);
    }
}
