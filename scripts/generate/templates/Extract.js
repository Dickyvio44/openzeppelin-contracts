const format = require('../format-lines');
const { range } = require('../../helpers');

// TEMPLATE
const header = `\
pragma solidity ^0.8.20;

/**
 * @dev Helper library extracting sections of value types.
 */
`;

const errors = `\
  error OutOfRangeAccess();
`;

const extract = (i, j) => `\
  /// @dev Get a uint${8 * j} in \`input\`, located \`offset\` bits from the right. Result is aligned to the right.
  function extractUint${8 * j}(uint${8 * i} input, uint8 offset) internal pure returns (uint${8 * j} output) {
    if (offset > ${8 * (i - j)}) revert OutOfRangeAccess();
    assembly ("memory-safe") {
      output := and(shr(offset, input), shr(${0x100 - 8 * j}, not(0)))
    }
  }

  /// @dev Get a uint${8 * j} in \`input\`, located \`offset\` bits from the left. Result is aligned to the right.
  function extractUint${8 * j}(bytes${i} input, uint8 offset) internal pure returns (uint${8 * j} output) {
    if (offset > ${8 * (i - j)}) revert OutOfRangeAccess();
    assembly ("memory-safe") {
      output := and(shr(sub(${0x100 - 8 * j}, offset), input), shr(${0x100 - 8 * j}, not(0)))
    }
  }

  /// @dev Get a bytes${j} in \`input\`, located \`offset\` bits from the left. Result is aligned to the left.
  function extractBytes${j}(bytes${i} input, uint8 offset) internal pure returns (bytes${j} output) {
    if (offset > ${8 * (i - j)}) revert OutOfRangeAccess();
    assembly ("memory-safe") {
      output := and(shl(offset, input), shl(${0x100 - 8 * j}, not(0)))
    }
  }

  /// @dev Get a bytes${j} in \`input\`, located \`offset\` bits from the left. Result is aligned to the left.
  function extractBytes${j}(uint${8 * i} input, uint8 offset) internal pure returns (bytes${j} output) {
    if (offset > ${8 * (i - j)}) revert OutOfRangeAccess();
    assembly ("memory-safe") {
      output := and(shl(sub(${0x100 - 8 * j}, offset), input), shl(${0x100 - 8 * j}, not(0)))
    }
  }
`;

// GENERATE
module.exports = format(
  header.trimEnd(),
  'library Extract {',
  errors,
  range(1, 33).flatMap(i => range(1, i).map(j => extract(i, j))),
  '}',
);
