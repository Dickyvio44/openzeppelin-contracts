// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../cryptography/ECDSA.sol";
import "../drafts/EIP712.sol";
import "../utils/SafeCast.sol";

/*
 * @dev An Out-of-Order supporting forwarder to be used together with an ERC2771 compatible contract. See {ERC2771Context}.
 */
contract OutOfOrderForwarder is EIP712 {
    using ECDSA for bytes32;

    struct ForwardRequest {
        address from;
        address to;
        uint256 value;
        uint256 gas;
        uint256 nonce;
        bytes data;
        uint256 validUntil;
    }

    bytes32 private constant TYPEHASH = keccak256("ForwardRequest(address from,address to,uint256 value,uint256 gas,uint256 nonce,bytes data,uint256 validUntil)");

    mapping(address => mapping(uint128 => uint128)) private _nonces;

    constructor() EIP712("OutOfOrderForwarder", "0.0.1") {}

    function getNonce(address from) public view returns (uint256) {
        return uint256(_nonces[from][0]);
    }

    function getNonce(address from, uint128 timeline) public view returns (uint128) {
        return _nonces[from][timeline];
    }

    function verify(ForwardRequest calldata req, bytes calldata signature) public view returns (bool) {
        address signer = _hashTypedDataV4(keccak256(abi.encode(
            TYPEHASH,
            req.from,
            req.to,
            req.value,
            req.gas,
            req.nonce,
            keccak256(req.data),
            req.validUntil
        ))).recover(signature);
        return (_nonces[req.from][SafeCast.toUint128(req.nonce >> 128)] == req.nonce % (1 << 128))
            && (req.validUntil >= block.number || req.validUntil == 0)
            && (req.from == signer);
    }

    function execute(ForwardRequest calldata req, bytes calldata signature) public payable returns (bool, bytes memory) {
        require(verify(req, signature), "MinimalForwarder: signature does not match request");
        _nonces[req.from][SafeCast.toUint128(req.nonce >> 128)] += 1;

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = req.to.call{gas: req.gas, value: req.value}(abi.encodePacked(req.data, req.from));
        // Validate that the relayer has sent enough gas for the call.
        // See https://ronan.eth.link/blog/ethereum-gas-dangers/
        assert(gasleft() > req.gas / 63);

        return (success, returndata);
    }
}
