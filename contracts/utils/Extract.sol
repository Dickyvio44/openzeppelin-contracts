// SPDX-License-Identifier: MIT
// This file was procedurally generated from scripts/generate/templates/Extract.js.

pragma solidity ^0.8.20;

/**
 * @dev Helper library extracting sections of value types.
 */
library Extract {
    error OutOfRangeAccess();

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint16 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes2 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes2 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint16 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint24 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes3 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes3 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint24 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint24 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes3 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes3 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint24 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint32 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes4 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes4 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint32 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint32 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes4 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes4 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint32 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint32 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes4 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes4 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint32 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint40 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes5 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes5 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint40 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint40 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes5 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes5 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint40 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint40 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes5 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes5 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint40 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint40 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes5 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes5 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint40 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint48 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes6 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes6 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint48 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint48 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes6 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes6 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint48 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint48 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes6 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes6 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint48 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint48 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes6 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes6 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint48 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint48 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes6 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes6 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint48 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint56 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes7 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes7 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint56 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint56 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes7 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes7 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint56 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint56 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes7 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes7 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint56 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint56 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes7 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes7 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint56 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint56 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes7 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes7 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint56 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint56 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes7 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes7 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint56 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint64 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes8 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes8 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint64 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint64 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes8 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes8 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint64 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint64 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes8 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes8 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint64 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint64 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes8 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes8 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint64 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint64 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes8 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes8 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint64 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint64 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes8 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes8 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint64 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint64 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes8 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes8 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint64 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint72 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes9 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes9 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint72 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint72 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes9 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes9 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint72 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint72 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes9 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes9 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint72 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint72 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes9 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes9 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint72 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint72 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes9 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes9 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint72 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint72 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes9 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes9 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint72 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint72 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes9 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes9 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint72 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint72 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes9 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes9 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint72 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint80 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes10 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes10 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint80 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint80 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes10 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes10 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint80 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint80 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes10 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes10 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint80 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint80 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes10 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes10 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint80 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint80 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes10 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes10 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint80 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint80 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes10 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes10 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint80 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint80 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes10 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes10 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint80 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint80 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes10 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes10 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint80 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint80 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes10 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes10 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint80 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint88 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes11 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes11 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint88 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint88 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes11 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes11 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint88 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint88 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes11 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes11 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint88 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint88 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes11 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes11 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint88 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint88 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes11 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes11 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint88 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint88 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes11 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes11 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint88 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint88 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes11 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes11 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint88 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint88 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes11 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes11 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint88 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint88 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes11 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes11 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint88 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint88 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes11 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes11 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint88 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint96 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes12 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes12 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint96 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint96 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes12 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes12 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint96 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint96 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes12 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes12 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint96 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint96 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes12 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes12 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint96 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint96 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes12 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes12 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint96 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint96 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes12 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes12 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint96 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint96 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes12 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes12 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint96 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint96 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes12 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes12 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint96 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint96 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes12 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes12 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint96 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint96 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes12 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes12 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint96 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint96 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes12 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes12 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint96 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint104 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes13 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes13 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint104 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint104 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes13 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes13 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint104 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint104 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes13 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes13 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint104 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint104 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes13 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes13 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint104 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint104 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes13 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes13 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint104 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint104 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes13 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes13 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint104 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint104 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes13 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes13 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint104 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint104 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes13 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes13 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint104 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint104 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes13 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes13 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint104 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint104 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes13 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes13 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint104 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint104 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes13 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes13 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint104 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint104 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes13 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes13 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint104 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint112 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes14 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes14 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint112 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint112 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes14 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes14 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint112 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint112 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes14 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes14 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint112 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint112 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes14 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes14 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint112 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint112 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes14 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes14 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint112 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint112 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes14 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes14 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint112 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint112 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes14 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes14 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint112 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint112 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes14 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes14 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint112 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint112 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes14 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes14 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint112 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint112 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes14 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes14 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint112 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint112 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes14 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes14 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint112 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint112 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes14 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes14 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint112 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint112 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes14 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes14 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint112 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint120 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes15 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes15 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint120 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint120 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes15 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes15 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint120 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint120 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes15 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes15 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint120 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint120 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes15 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes15 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint120 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint120 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes15 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes15 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint120 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint120 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes15 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes15 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint120 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint120 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes15 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes15 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint120 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint120 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes15 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes15 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint120 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint120 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes15 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes15 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint120 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint120 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes15 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes15 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint120 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint120 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes15 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes15 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint120 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint120 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes15 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes15 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint120 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint120 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes15 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes15 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint120 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint120 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes15 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes15 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint120 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint128 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes16 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes16 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint128 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint128 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes16 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes16 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint128 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint128 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes16 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes16 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint128 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint128 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes16 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes16 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint128 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint128 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes16 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes16 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint128 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint128 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes16 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes16 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint128 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint128 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes16 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes16 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint128 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint128 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes16 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes16 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint128 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint128 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes16 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes16 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint128 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint128 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes16 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes16 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint128 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint128 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes16 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes16 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint128 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint128 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes16 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes16 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint128 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint128 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes16 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes16 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint128 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint128 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes16 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes16 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint128 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint128 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes16 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes16 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint128 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint136 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes17 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes17 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint136 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint136 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes17 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes17 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint136 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint136 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes17 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes17 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint136 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint136 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes17 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes17 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint136 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint136 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes17 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes17 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint136 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint136 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes17 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes17 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint136 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint136 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes17 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes17 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint136 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint136 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes17 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes17 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint136 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint136 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes17 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes17 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint136 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint136 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes17 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes17 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint136 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint136 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes17 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes17 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint136 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint136 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes17 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes17 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint136 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint136 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes17 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes17 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint136 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint136 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes17 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes17 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint136 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint136 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes17 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes17 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint136 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint136 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes17 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes17 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint136 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint144 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes18 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes18 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint144 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint144 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes18 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes18 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint144 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint144 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes18 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes18 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint144 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint144 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes18 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes18 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint144 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint144 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes18 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes18 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint144 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint144 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes18 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes18 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint144 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint144 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes18 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes18 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint144 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint144 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes18 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes18 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint144 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint144 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes18 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes18 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint144 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint144 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes18 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes18 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint144 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint144 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes18 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes18 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint144 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint144 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes18 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes18 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint144 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint144 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes18 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes18 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint144 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint144 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes18 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes18 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint144 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint144 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes18 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes18 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint144 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint144 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes18 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes18 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint144 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint144 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes18 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes18 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint144 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint152 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes19 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes19 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint152 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint152 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes19 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes19 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint152 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint152 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes19 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes19 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint152 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint152 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes19 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes19 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint152 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint152 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes19 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes19 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint152 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint152 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes19 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes19 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint152 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint152 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes19 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes19 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint152 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint152 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes19 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes19 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint152 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint152 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes19 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes19 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint152 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint152 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes19 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes19 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint152 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint152 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes19 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes19 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint152 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint152 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes19 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes19 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint152 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint152 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes19 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes19 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint152 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint152 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes19 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes19 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint152 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint152 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes19 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes19 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint152 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint152 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes19 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes19 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint152 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint152 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes19 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes19 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint152 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint152 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes19 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes19 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint152 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint160 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes20 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes20 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint160 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint160 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes20 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes20 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint160 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint160 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes20 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes20 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint160 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint160 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes20 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes20 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint160 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint160 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes20 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes20 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint160 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint160 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes20 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes20 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint160 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint160 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes20 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes20 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint160 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint160 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes20 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes20 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint160 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint160 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes20 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes20 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint160 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint160 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes20 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes20 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint160 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint160 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes20 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes20 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint160 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint160 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes20 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes20 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint160 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint160 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes20 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes20 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint160 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint160 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes20 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes20 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint160 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint160 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes20 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes20 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint160 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint160 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes20 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes20 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint160 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint160 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes20 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes20 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint160 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint160 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes20 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes20 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint160 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint160 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes20 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes20 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint160 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint168 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes21 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes21 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint168 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint168 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes21 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes21 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint168 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint168 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes21 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes21 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint168 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint168 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes21 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes21 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint168 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint168 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes21 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes21 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint168 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint168 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes21 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes21 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint168 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint168 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes21 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes21 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint168 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint168 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes21 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes21 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint168 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint168 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes21 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes21 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint168 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint168 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes21 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes21 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint168 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint168 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes21 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes21 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint168 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint168 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes21 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes21 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint168 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint168 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes21 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes21 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint168 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint168 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes21 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes21 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint168 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint168 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes21 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes21 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint168 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint168 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes21 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes21 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint168 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint168 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes21 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes21 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint168 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint168 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes21 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes21 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint168 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint168 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes21 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes21 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint168 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint168 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes21 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes21 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint168 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint176 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes22 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes22 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint176 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint176 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes22 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes22 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint176 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint176 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes22 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes22 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint176 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint176 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes22 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes22 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint176 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint176 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes22 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes22 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint176 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint176 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes22 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes22 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint176 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint176 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes22 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes22 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint176 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint176 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes22 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes22 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint176 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint176 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes22 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes22 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint176 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint176 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes22 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes22 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint176 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint176 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes22 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes22 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint176 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint176 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes22 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes22 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint176 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint176 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes22 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes22 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint176 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint176 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes22 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes22 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint176 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint176 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes22 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes22 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint176 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint176 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes22 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes22 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint176 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint176 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes22 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes22 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint176 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint176 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes22 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes22 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint176 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint176 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes22 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes22 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint176 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint176 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes22 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes22 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint176 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint176 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes22 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes22 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint176 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint184 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes23 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes23 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint184 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint184 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes23 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes23 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint184 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint184 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes23 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes23 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint184 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint184 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes23 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes23 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint184 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint184 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes23 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes23 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint184 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint184 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes23 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes23 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint184 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint184 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes23 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes23 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint184 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint184 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes23 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes23 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint184 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint184 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes23 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes23 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint184 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint184 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes23 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes23 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint184 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint184 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes23 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes23 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint184 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint184 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes23 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes23 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint184 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint184 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes23 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes23 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint184 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint184 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes23 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes23 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint184 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint184 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes23 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes23 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint184 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint184 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes23 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes23 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint184 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint184 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes23 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes23 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint184 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint184 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes23 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes23 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint184 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint184 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes23 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes23 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint184 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint184 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes23 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes23 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint184 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint184 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes23 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes23 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint184 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint184 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes23 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes23 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint184 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint192 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes24 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes24 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint192 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint192 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes24 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes24 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint192 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint192 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes24 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes24 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint192 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint192 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes24 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes24 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint192 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint192 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes24 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes24 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint192 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint192 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes24 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes24 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint192 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint192 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes24 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes24 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint192 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint192 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes24 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes24 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint192 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint192 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes24 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes24 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint192 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint192 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes24 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes24 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint192 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint192 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes24 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes24 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint192 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint192 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes24 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes24 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint192 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint192 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes24 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes24 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint192 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint192 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes24 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes24 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint192 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint192 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes24 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes24 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint192 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint192 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes24 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes24 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint192 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint192 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes24 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes24 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint192 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint192 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes24 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes24 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint192 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint192 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes24 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes24 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint192 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint192 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes24 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes24 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint192 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint192 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes24 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes24 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint192 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint192 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes24 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes24 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint192 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint192 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes24 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes24 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint192 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint200 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes25 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes25 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint200 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint200 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes25 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes25 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint200 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint200 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes25 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes25 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint200 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint200 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes25 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes25 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint200 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint200 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes25 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes25 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint200 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint200 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes25 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes25 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint200 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint200 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes25 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes25 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint200 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint200 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes25 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes25 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint200 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint200 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes25 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes25 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint200 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint200 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes25 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes25 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint200 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint200 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes25 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes25 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint200 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint200 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes25 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes25 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint200 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint200 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes25 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes25 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint200 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint200 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes25 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes25 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint200 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint200 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes25 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes25 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint200 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint200 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes25 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes25 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint200 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint200 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes25 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes25 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint200 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint200 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes25 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes25 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint200 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint200 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes25 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes25 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint200 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint200 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes25 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes25 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint200 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint200 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes25 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes25 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint200 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint200 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes25 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes25 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint200 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint200 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes25 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes25 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint200 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint200 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes25 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes25 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint200 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint208 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes26 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes26 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint208 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint208 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes26 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes26 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint208 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint208 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes26 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes26 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint208 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint208 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes26 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes26 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint208 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint208 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes26 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes26 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint208 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint208 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes26 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes26 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint208 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint208 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes26 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes26 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint208 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint208 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes26 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes26 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint208 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint208 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes26 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes26 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint208 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint208 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes26 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes26 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint208 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint208 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes26 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes26 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint208 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint208 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes26 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes26 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint208 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint208 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes26 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes26 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint208 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint208 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes26 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes26 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint208 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint208 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes26 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes26 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint208 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint208 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes26 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes26 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint208 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint208 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes26 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes26 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint208 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint208 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes26 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes26 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint208 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint208 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes26 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes26 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint208 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint208 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes26 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes26 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint208 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint208 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes26 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes26 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint208 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint208 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes26 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes26 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint208 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint208 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes26 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes26 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint208 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint208 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes26 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes26 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint208 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint200(uint208 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(56, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint200(bytes26 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(56, offset), input), shr(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(bytes26 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(uint208 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(56, offset), input), shl(56, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint216 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes27 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes27 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint216 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint216 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes27 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes27 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint216 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint216 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes27 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes27 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint216 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint216 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes27 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes27 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint216 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint216 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes27 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes27 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint216 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint216 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes27 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes27 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint216 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint216 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes27 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes27 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint216 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint216 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes27 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes27 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint216 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint216 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes27 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes27 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint216 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint216 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes27 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes27 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint216 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint216 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes27 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes27 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint216 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint216 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes27 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes27 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint216 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint216 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes27 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes27 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint216 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint216 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes27 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes27 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint216 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint216 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes27 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes27 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint216 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint216 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes27 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes27 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint216 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint216 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes27 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes27 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint216 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint216 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes27 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes27 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint216 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint216 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes27 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes27 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint216 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint216 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes27 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes27 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint216 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint216 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes27 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes27 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint216 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint216 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes27 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes27 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint216 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint216 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes27 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes27 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint216 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint216 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes27 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes27 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint216 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint200(uint216 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(56, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint200(bytes27 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(56, offset), input), shr(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(bytes27 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(uint216 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(56, offset), input), shl(56, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint208(uint216 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(48, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint208(bytes27 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(48, offset), input), shr(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(bytes27 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(uint216 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(48, offset), input), shl(48, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint224 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes28 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes28 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint224 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint224 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes28 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes28 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint224 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint224 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes28 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes28 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint224 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint224 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes28 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes28 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint224 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint224 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes28 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes28 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint224 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint224 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes28 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes28 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint224 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint224 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes28 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes28 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint224 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint224 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes28 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes28 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint224 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint224 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes28 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes28 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint224 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint224 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes28 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes28 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint224 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint224 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes28 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes28 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint224 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint224 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes28 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes28 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint224 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint224 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes28 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes28 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint224 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint224 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes28 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes28 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint224 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint224 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes28 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes28 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint224 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint224 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes28 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes28 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint224 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint224 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes28 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes28 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint224 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint224 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes28 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes28 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint224 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint224 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes28 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes28 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint224 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint224 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes28 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes28 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint224 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint224 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes28 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes28 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint224 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint224 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes28 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes28 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint224 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint224 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes28 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes28 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint224 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint224 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes28 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes28 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint224 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint200(uint224 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(56, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint200(bytes28 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(56, offset), input), shr(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(bytes28 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(uint224 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(56, offset), input), shl(56, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint208(uint224 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(48, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint208(bytes28 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(48, offset), input), shr(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(bytes28 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(uint224 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(48, offset), input), shl(48, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint216(uint224 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(40, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint216(bytes28 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(40, offset), input), shr(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(bytes28 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(uint224 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(40, offset), input), shl(40, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint232 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes29 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes29 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint232 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint232 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes29 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes29 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint232 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint232 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes29 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes29 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint232 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint232 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes29 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes29 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint232 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint232 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes29 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes29 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint232 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint232 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes29 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes29 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint232 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint232 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes29 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes29 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint232 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint232 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes29 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes29 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint232 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint232 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes29 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes29 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint232 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint232 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes29 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes29 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint232 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint232 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes29 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes29 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint232 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint232 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes29 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes29 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint232 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint232 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes29 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes29 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint232 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint232 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes29 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes29 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint232 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint232 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes29 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes29 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint232 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint232 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes29 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes29 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint232 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint232 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes29 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes29 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint232 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint232 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes29 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes29 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint232 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint232 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes29 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes29 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint232 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint232 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes29 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes29 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint232 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint232 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes29 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes29 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint232 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint232 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes29 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes29 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint232 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint232 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes29 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes29 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint232 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint232 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes29 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes29 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint232 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint200(uint232 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(56, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint200(bytes29 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(56, offset), input), shr(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(bytes29 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(uint232 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(56, offset), input), shl(56, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint208(uint232 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(48, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint208(bytes29 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(48, offset), input), shr(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(bytes29 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(uint232 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(48, offset), input), shl(48, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint216(uint232 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(40, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint216(bytes29 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(40, offset), input), shr(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(bytes29 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(uint232 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(40, offset), input), shl(40, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint224(uint232 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(32, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint224(bytes29 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(32, offset), input), shr(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(bytes29 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(uint232 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(32, offset), input), shl(32, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint240 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes30 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes30 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint240 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint240 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes30 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes30 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint240 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint240 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes30 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes30 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint240 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint240 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes30 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes30 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint240 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint240 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes30 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes30 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint240 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint240 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes30 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes30 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint240 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint240 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes30 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes30 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint240 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint240 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes30 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes30 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint240 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint240 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes30 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes30 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint240 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint240 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes30 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes30 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint240 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint240 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes30 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes30 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint240 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint240 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes30 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes30 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint240 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint240 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes30 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes30 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint240 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint240 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes30 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes30 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint240 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint240 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes30 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes30 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint240 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint240 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes30 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes30 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint240 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint240 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes30 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes30 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint240 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint240 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes30 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes30 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint240 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint240 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes30 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes30 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint240 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint240 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes30 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes30 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint240 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint240 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes30 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes30 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint240 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint240 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes30 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes30 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint240 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint240 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes30 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes30 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint240 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint240 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes30 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes30 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint240 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint200(uint240 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(56, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint200(bytes30 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(56, offset), input), shr(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(bytes30 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(uint240 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(56, offset), input), shl(56, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint208(uint240 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(48, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint208(bytes30 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(48, offset), input), shr(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(bytes30 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(uint240 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(48, offset), input), shl(48, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint216(uint240 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(40, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint216(bytes30 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(40, offset), input), shr(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(bytes30 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(uint240 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(40, offset), input), shl(40, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint224(uint240 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(32, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint224(bytes30 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(32, offset), input), shr(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(bytes30 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(uint240 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(32, offset), input), shl(32, not(0)))
        }
    }

    /// @dev Get a uint232 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint232(uint240 input, uint8 offset) internal pure returns (uint232 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(24, not(0)))
        }
    }

    /// @dev Get a uint232 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint232(bytes30 input, uint8 offset) internal pure returns (uint232 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(24, offset), input), shr(24, not(0)))
        }
    }

    /// @dev Get a bytes29 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes29(bytes30 input, uint8 offset) internal pure returns (bytes29 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(24, not(0)))
        }
    }

    /// @dev Get a bytes29 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes29(uint240 input, uint8 offset) internal pure returns (bytes29 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(24, offset), input), shl(24, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint248 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes31 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes31 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint248 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint248 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes31 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes31 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint248 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint248 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes31 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes31 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint248 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint248 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes31 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes31 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint248 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint248 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes31 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes31 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint248 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint248 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes31 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes31 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint248 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint248 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes31 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes31 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint248 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint248 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes31 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes31 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint248 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint248 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes31 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes31 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint248 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint248 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes31 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes31 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint248 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint248 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes31 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes31 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint248 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint248 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes31 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes31 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint248 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint248 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes31 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes31 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint248 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint248 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes31 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes31 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint248 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint248 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes31 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes31 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint248 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint248 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes31 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes31 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint248 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint248 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes31 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes31 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint248 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint248 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes31 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes31 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint248 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint248 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes31 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes31 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint248 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint248 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes31 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes31 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint248 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint248 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes31 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes31 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint248 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint248 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes31 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes31 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint248 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint248 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes31 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes31 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint248 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint248 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes31 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes31 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint248 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint200(uint248 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(56, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint200(bytes31 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(56, offset), input), shr(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(bytes31 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(uint248 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(56, offset), input), shl(56, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint208(uint248 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(48, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint208(bytes31 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(48, offset), input), shr(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(bytes31 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(uint248 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(48, offset), input), shl(48, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint216(uint248 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(40, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint216(bytes31 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(40, offset), input), shr(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(bytes31 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(uint248 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(40, offset), input), shl(40, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint224(uint248 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(32, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint224(bytes31 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(32, offset), input), shr(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(bytes31 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(uint248 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(32, offset), input), shl(32, not(0)))
        }
    }

    /// @dev Get a uint232 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint232(uint248 input, uint8 offset) internal pure returns (uint232 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(24, not(0)))
        }
    }

    /// @dev Get a uint232 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint232(bytes31 input, uint8 offset) internal pure returns (uint232 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(24, offset), input), shr(24, not(0)))
        }
    }

    /// @dev Get a bytes29 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes29(bytes31 input, uint8 offset) internal pure returns (bytes29 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(24, not(0)))
        }
    }

    /// @dev Get a bytes29 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes29(uint248 input, uint8 offset) internal pure returns (bytes29 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(24, offset), input), shl(24, not(0)))
        }
    }

    /// @dev Get a uint240 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint240(uint248 input, uint8 offset) internal pure returns (uint240 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(16, not(0)))
        }
    }

    /// @dev Get a uint240 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint240(bytes31 input, uint8 offset) internal pure returns (uint240 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(16, offset), input), shr(16, not(0)))
        }
    }

    /// @dev Get a bytes30 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes30(bytes31 input, uint8 offset) internal pure returns (bytes30 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(16, not(0)))
        }
    }

    /// @dev Get a bytes30 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes30(uint248 input, uint8 offset) internal pure returns (bytes30 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(16, offset), input), shl(16, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint8(uint256 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 248) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(248, not(0)))
        }
    }

    /// @dev Get a uint8 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint8(bytes32 input, uint8 offset) internal pure returns (uint8 output) {
        if (offset > 248) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(248, offset), input), shr(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(bytes32 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 248) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(248, not(0)))
        }
    }

    /// @dev Get a bytes1 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes1(uint256 input, uint8 offset) internal pure returns (bytes1 output) {
        if (offset > 248) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(248, offset), input), shl(248, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint16(uint256 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(240, not(0)))
        }
    }

    /// @dev Get a uint16 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint16(bytes32 input, uint8 offset) internal pure returns (uint16 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(240, offset), input), shr(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(bytes32 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(240, not(0)))
        }
    }

    /// @dev Get a bytes2 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes2(uint256 input, uint8 offset) internal pure returns (bytes2 output) {
        if (offset > 240) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(240, offset), input), shl(240, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint24(uint256 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(232, not(0)))
        }
    }

    /// @dev Get a uint24 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint24(bytes32 input, uint8 offset) internal pure returns (uint24 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(232, offset), input), shr(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(bytes32 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(232, not(0)))
        }
    }

    /// @dev Get a bytes3 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes3(uint256 input, uint8 offset) internal pure returns (bytes3 output) {
        if (offset > 232) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(232, offset), input), shl(232, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint32(uint256 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(224, not(0)))
        }
    }

    /// @dev Get a uint32 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint32(bytes32 input, uint8 offset) internal pure returns (uint32 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(224, offset), input), shr(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(bytes32 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(224, not(0)))
        }
    }

    /// @dev Get a bytes4 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes4(uint256 input, uint8 offset) internal pure returns (bytes4 output) {
        if (offset > 224) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(224, offset), input), shl(224, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint40(uint256 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(216, not(0)))
        }
    }

    /// @dev Get a uint40 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint40(bytes32 input, uint8 offset) internal pure returns (uint40 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(216, offset), input), shr(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(bytes32 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(216, not(0)))
        }
    }

    /// @dev Get a bytes5 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes5(uint256 input, uint8 offset) internal pure returns (bytes5 output) {
        if (offset > 216) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(216, offset), input), shl(216, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint48(uint256 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(208, not(0)))
        }
    }

    /// @dev Get a uint48 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint48(bytes32 input, uint8 offset) internal pure returns (uint48 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(208, offset), input), shr(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(bytes32 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(208, not(0)))
        }
    }

    /// @dev Get a bytes6 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes6(uint256 input, uint8 offset) internal pure returns (bytes6 output) {
        if (offset > 208) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(208, offset), input), shl(208, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint56(uint256 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(200, not(0)))
        }
    }

    /// @dev Get a uint56 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint56(bytes32 input, uint8 offset) internal pure returns (uint56 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(200, offset), input), shr(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(bytes32 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(200, not(0)))
        }
    }

    /// @dev Get a bytes7 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes7(uint256 input, uint8 offset) internal pure returns (bytes7 output) {
        if (offset > 200) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(200, offset), input), shl(200, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint64(uint256 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(192, not(0)))
        }
    }

    /// @dev Get a uint64 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint64(bytes32 input, uint8 offset) internal pure returns (uint64 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(192, offset), input), shr(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(bytes32 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(192, not(0)))
        }
    }

    /// @dev Get a bytes8 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes8(uint256 input, uint8 offset) internal pure returns (bytes8 output) {
        if (offset > 192) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(192, offset), input), shl(192, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint72(uint256 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(184, not(0)))
        }
    }

    /// @dev Get a uint72 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint72(bytes32 input, uint8 offset) internal pure returns (uint72 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(184, offset), input), shr(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(bytes32 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(184, not(0)))
        }
    }

    /// @dev Get a bytes9 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes9(uint256 input, uint8 offset) internal pure returns (bytes9 output) {
        if (offset > 184) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(184, offset), input), shl(184, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint80(uint256 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(176, not(0)))
        }
    }

    /// @dev Get a uint80 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint80(bytes32 input, uint8 offset) internal pure returns (uint80 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(176, offset), input), shr(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(bytes32 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(176, not(0)))
        }
    }

    /// @dev Get a bytes10 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes10(uint256 input, uint8 offset) internal pure returns (bytes10 output) {
        if (offset > 176) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(176, offset), input), shl(176, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint88(uint256 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(168, not(0)))
        }
    }

    /// @dev Get a uint88 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint88(bytes32 input, uint8 offset) internal pure returns (uint88 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(168, offset), input), shr(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(bytes32 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(168, not(0)))
        }
    }

    /// @dev Get a bytes11 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes11(uint256 input, uint8 offset) internal pure returns (bytes11 output) {
        if (offset > 168) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(168, offset), input), shl(168, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint96(uint256 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(160, not(0)))
        }
    }

    /// @dev Get a uint96 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint96(bytes32 input, uint8 offset) internal pure returns (uint96 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(160, offset), input), shr(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(bytes32 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(160, not(0)))
        }
    }

    /// @dev Get a bytes12 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes12(uint256 input, uint8 offset) internal pure returns (bytes12 output) {
        if (offset > 160) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(160, offset), input), shl(160, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint104(uint256 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(152, not(0)))
        }
    }

    /// @dev Get a uint104 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint104(bytes32 input, uint8 offset) internal pure returns (uint104 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(152, offset), input), shr(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(bytes32 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(152, not(0)))
        }
    }

    /// @dev Get a bytes13 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes13(uint256 input, uint8 offset) internal pure returns (bytes13 output) {
        if (offset > 152) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(152, offset), input), shl(152, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint112(uint256 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(144, not(0)))
        }
    }

    /// @dev Get a uint112 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint112(bytes32 input, uint8 offset) internal pure returns (uint112 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(144, offset), input), shr(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(bytes32 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(144, not(0)))
        }
    }

    /// @dev Get a bytes14 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes14(uint256 input, uint8 offset) internal pure returns (bytes14 output) {
        if (offset > 144) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(144, offset), input), shl(144, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint120(uint256 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(136, not(0)))
        }
    }

    /// @dev Get a uint120 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint120(bytes32 input, uint8 offset) internal pure returns (uint120 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(136, offset), input), shr(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(bytes32 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(136, not(0)))
        }
    }

    /// @dev Get a bytes15 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes15(uint256 input, uint8 offset) internal pure returns (bytes15 output) {
        if (offset > 136) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(136, offset), input), shl(136, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint128(uint256 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(128, not(0)))
        }
    }

    /// @dev Get a uint128 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint128(bytes32 input, uint8 offset) internal pure returns (uint128 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(128, offset), input), shr(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(bytes32 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(128, not(0)))
        }
    }

    /// @dev Get a bytes16 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes16(uint256 input, uint8 offset) internal pure returns (bytes16 output) {
        if (offset > 128) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(128, offset), input), shl(128, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint136(uint256 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(120, not(0)))
        }
    }

    /// @dev Get a uint136 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint136(bytes32 input, uint8 offset) internal pure returns (uint136 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(120, offset), input), shr(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(bytes32 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(120, not(0)))
        }
    }

    /// @dev Get a bytes17 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes17(uint256 input, uint8 offset) internal pure returns (bytes17 output) {
        if (offset > 120) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(120, offset), input), shl(120, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint144(uint256 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(112, not(0)))
        }
    }

    /// @dev Get a uint144 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint144(bytes32 input, uint8 offset) internal pure returns (uint144 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(112, offset), input), shr(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(bytes32 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(112, not(0)))
        }
    }

    /// @dev Get a bytes18 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes18(uint256 input, uint8 offset) internal pure returns (bytes18 output) {
        if (offset > 112) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(112, offset), input), shl(112, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint152(uint256 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(104, not(0)))
        }
    }

    /// @dev Get a uint152 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint152(bytes32 input, uint8 offset) internal pure returns (uint152 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(104, offset), input), shr(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(bytes32 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(104, not(0)))
        }
    }

    /// @dev Get a bytes19 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes19(uint256 input, uint8 offset) internal pure returns (bytes19 output) {
        if (offset > 104) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(104, offset), input), shl(104, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint160(uint256 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(96, not(0)))
        }
    }

    /// @dev Get a uint160 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint160(bytes32 input, uint8 offset) internal pure returns (uint160 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(96, offset), input), shr(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(bytes32 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(96, not(0)))
        }
    }

    /// @dev Get a bytes20 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes20(uint256 input, uint8 offset) internal pure returns (bytes20 output) {
        if (offset > 96) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(96, offset), input), shl(96, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint168(uint256 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(88, not(0)))
        }
    }

    /// @dev Get a uint168 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint168(bytes32 input, uint8 offset) internal pure returns (uint168 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(88, offset), input), shr(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(bytes32 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(88, not(0)))
        }
    }

    /// @dev Get a bytes21 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes21(uint256 input, uint8 offset) internal pure returns (bytes21 output) {
        if (offset > 88) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(88, offset), input), shl(88, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint176(uint256 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(80, not(0)))
        }
    }

    /// @dev Get a uint176 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint176(bytes32 input, uint8 offset) internal pure returns (uint176 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(80, offset), input), shr(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(bytes32 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(80, not(0)))
        }
    }

    /// @dev Get a bytes22 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes22(uint256 input, uint8 offset) internal pure returns (bytes22 output) {
        if (offset > 80) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(80, offset), input), shl(80, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint184(uint256 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(72, not(0)))
        }
    }

    /// @dev Get a uint184 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint184(bytes32 input, uint8 offset) internal pure returns (uint184 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(72, offset), input), shr(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(bytes32 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(72, not(0)))
        }
    }

    /// @dev Get a bytes23 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes23(uint256 input, uint8 offset) internal pure returns (bytes23 output) {
        if (offset > 72) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(72, offset), input), shl(72, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint192(uint256 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(64, not(0)))
        }
    }

    /// @dev Get a uint192 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint192(bytes32 input, uint8 offset) internal pure returns (uint192 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(64, offset), input), shr(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(bytes32 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(64, not(0)))
        }
    }

    /// @dev Get a bytes24 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes24(uint256 input, uint8 offset) internal pure returns (bytes24 output) {
        if (offset > 64) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(64, offset), input), shl(64, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint200(uint256 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(56, not(0)))
        }
    }

    /// @dev Get a uint200 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint200(bytes32 input, uint8 offset) internal pure returns (uint200 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(56, offset), input), shr(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(bytes32 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(56, not(0)))
        }
    }

    /// @dev Get a bytes25 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes25(uint256 input, uint8 offset) internal pure returns (bytes25 output) {
        if (offset > 56) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(56, offset), input), shl(56, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint208(uint256 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(48, not(0)))
        }
    }

    /// @dev Get a uint208 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint208(bytes32 input, uint8 offset) internal pure returns (uint208 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(48, offset), input), shr(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(bytes32 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(48, not(0)))
        }
    }

    /// @dev Get a bytes26 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes26(uint256 input, uint8 offset) internal pure returns (bytes26 output) {
        if (offset > 48) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(48, offset), input), shl(48, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint216(uint256 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(40, not(0)))
        }
    }

    /// @dev Get a uint216 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint216(bytes32 input, uint8 offset) internal pure returns (uint216 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(40, offset), input), shr(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(bytes32 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(40, not(0)))
        }
    }

    /// @dev Get a bytes27 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes27(uint256 input, uint8 offset) internal pure returns (bytes27 output) {
        if (offset > 40) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(40, offset), input), shl(40, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint224(uint256 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(32, not(0)))
        }
    }

    /// @dev Get a uint224 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint224(bytes32 input, uint8 offset) internal pure returns (uint224 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(32, offset), input), shr(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(bytes32 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(32, not(0)))
        }
    }

    /// @dev Get a bytes28 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes28(uint256 input, uint8 offset) internal pure returns (bytes28 output) {
        if (offset > 32) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(32, offset), input), shl(32, not(0)))
        }
    }

    /// @dev Get a uint232 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint232(uint256 input, uint8 offset) internal pure returns (uint232 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(24, not(0)))
        }
    }

    /// @dev Get a uint232 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint232(bytes32 input, uint8 offset) internal pure returns (uint232 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(24, offset), input), shr(24, not(0)))
        }
    }

    /// @dev Get a bytes29 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes29(bytes32 input, uint8 offset) internal pure returns (bytes29 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(24, not(0)))
        }
    }

    /// @dev Get a bytes29 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes29(uint256 input, uint8 offset) internal pure returns (bytes29 output) {
        if (offset > 24) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(24, offset), input), shl(24, not(0)))
        }
    }

    /// @dev Get a uint240 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint240(uint256 input, uint8 offset) internal pure returns (uint240 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(16, not(0)))
        }
    }

    /// @dev Get a uint240 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint240(bytes32 input, uint8 offset) internal pure returns (uint240 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(16, offset), input), shr(16, not(0)))
        }
    }

    /// @dev Get a bytes30 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes30(bytes32 input, uint8 offset) internal pure returns (bytes30 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(16, not(0)))
        }
    }

    /// @dev Get a bytes30 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes30(uint256 input, uint8 offset) internal pure returns (bytes30 output) {
        if (offset > 16) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(16, offset), input), shl(16, not(0)))
        }
    }

    /// @dev Get a uint248 in `input`, located `offset` bits from the right. Result is aligned to the right.
    function extractUint248(uint256 input, uint8 offset) internal pure returns (uint248 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(offset, input), shr(8, not(0)))
        }
    }

    /// @dev Get a uint248 in `input`, located `offset` bits from the left. Result is aligned to the right.
    function extractUint248(bytes32 input, uint8 offset) internal pure returns (uint248 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shr(sub(8, offset), input), shr(8, not(0)))
        }
    }

    /// @dev Get a bytes31 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes31(bytes32 input, uint8 offset) internal pure returns (bytes31 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(offset, input), shl(8, not(0)))
        }
    }

    /// @dev Get a bytes31 in `input`, located `offset` bits from the left. Result is aligned to the left.
    function extractBytes31(uint256 input, uint8 offset) internal pure returns (bytes31 output) {
        if (offset > 8) OutOfRangeAccess();
        assembly ("memory-safe") {
            output := and(shl(sub(8, offset), input), shl(8, not(0)))
        }
    }
}
