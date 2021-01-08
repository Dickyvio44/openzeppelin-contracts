// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "../math/Math.sol";

/**
 * @dev Collection of functions related to array types.
 */
library Arrays {
   /**
     * @dev Searches a sorted `array` and returns the first index that contains
     * a value greater or equal to `element`. If no such index exists (i.e. all
     * values in the array are strictly less than `element`), the array length is
     * returned. Time complexity O(log n).
     *
     * `array` is expected to be sorted in ascending order, and to contain no
     * repeated elements.
     */
    function findUpperBound(uint256[] storage array, uint256 element) internal view returns (uint256) {
        if (array.length == 0) {
            return 0;
        }

        uint256 low = 0;
        uint256 high = array.length;

        while (low < high) {
            uint256 mid = Math.average(low, high);

            // Note that mid will always be strictly less than high (i.e. it will be a valid array index)
            // because Math.average rounds down (it does integer division with truncation).
            if (array[mid] > element) {
                high = mid;
            } else {
                low = mid + 1;
            }
        }

        // At this point `low` is the exclusive upper bound. We will return the inclusive upper bound.
        if (low > 0 && array[low - 1] == element) {
            return low - 1;
        } else {
            return low;
        }
    }

    /**
     * @dev Generates an array [0, 1, 2, ..., length -1 ].
     * Time and space complexity O(n)
     */
    function range(uint256 length) internal pure returns (uint256[] memory result) {
        result = new uint256[](length);
        for (uint256 i = 0; i < result.length; ++i) {
            result[i] = i;
        }
    }

    /**
     * @dev Transforms an array of uint256 using an uint256 → uint256 function pointer.
     * Time and space complexity O(n)
     */
    function map(uint256[] memory self, function (uint256) view returns (uint256) op) internal view returns (uint256[] memory result) {
        result = new uint256[](self.length);
        for (uint256 i = 0; i < self.length; ++i) {
            result[i] = op(self[i]);
        }
    }

    /**
     * @dev Reduced an array of uint256 using an uint256,uint256 → uint256 function pointer and an initial value.
     * Time complexity O(n)
     */
    function reduce(uint256[] memory self, function (uint256, uint256) view returns (uint256) op, uint256 initial) internal view returns (uint256 result) {
        result = initial;
        for (uint256 i = 1; i < self.length; ++i) {
            result = op(result, self[i]);
        }
    }
}
