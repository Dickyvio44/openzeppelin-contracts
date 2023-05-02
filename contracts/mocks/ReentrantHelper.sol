// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../utils/Address.sol";
import "../utils/structs/DoubleEndedQueue.sol";

contract ReentrantHelper {
    using DoubleEndedQueue for DoubleEndedQueue.Bytes32Deque;

    struct Call {
        address target;
        bytes data;
    }

    DoubleEndedQueue.Bytes32Deque private _queue;
    mapping(bytes32 => Call) private _details;

    event Fallback(address sender, bytes4 sig, uint256 value, bool call, address callTarget, bytes callData);

    receive() external payable {
        _run();
    }

    fallback() external payable {
        _run();
    }

    function _schedule(address target, bytes calldata data) internal {
        bytes32 h = keccak256(abi.encode(target, data));

        _queue.pushBack(h);
        _details[h].target = target;
        _details[h].data = data;
    }

    function _run() internal {
        if (!_queue.empty()) {
            Call memory call = _details[_queue.popFront()];

            emit Fallback(msg.sender, msg.sig, msg.value, true, call.target, call.data);
            Address.functionCall(call.target, call.data);
        } else {
            emit Fallback(msg.sender, msg.sig, msg.value, false, address(0), new bytes(0));
        }
    }

    function _reset() internal {
        _queue.clear();
    }
}
