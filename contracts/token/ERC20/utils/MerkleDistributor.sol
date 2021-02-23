// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../token/ERC20/utils/SafeERC20.sol";
import "../utils/cryptography/MerkleProof.sol";
import "../utils/Address.sol";

contract MerkleDistributor {
    bytes32 private immutable _root;
    mapping (uint256 => uint256) private _claimed;

    event Claimed(uint256 indexed index, address indexed token, address indexed to, uint256 amount);

    constructor(bytes32 root) payable {
        _root = root;
    }

    function isClaimed(uint256 index) public view returns (bool) {
        uint256 offset = index >> 7;
        uint256 mask = 1 << (index & 0xff);
        return _claimed[offset] & mask == mask;
    }

    function claim(uint256 index, address token, address to, uint256 amount, bytes32[] calldata proof) public {
        uint256 offset = index >> 7;
        uint256 mask = 1 << (index & 0xff);
        uint256 word = _claimed[offset];
        require(word & mask == 0, 'MerkleDistributor: index already claimed');
        _claimed[offset] = word | mask;

        require(MerkleProof.verify(
            proof,
            _root,
            keccak256(abi.encodePacked(index, token, to, amount))
        ), "MerkleAirdrop: invalid proof");

        if (token == address(0)) {
            Address.sendValue(payable(to), amount);
        } else {
            SafeERC20.safeTransfer(IERC20(token), to, amount);
        }

        emit Claimed(index, token, to, amount);
    }

}
