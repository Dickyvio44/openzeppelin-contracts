// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../VTable.sol";
import "../../../utils/Context.sol";

import "./IDiamondLoupe.sol";

contract VTableDiamondLoupe is Context, IDiamondLoupe {
    using VTable for VTable.VTableStore;

    function facets() public view override returns (Facet[] memory) {
        this;
        revert("This implementation doesnt keep an index, use an offchain index instead");
    }

    function facetFunctionSelectors(address $facet) public view override returns (bytes4[] memory) {
        this;
        $facet;
        revert("This implementation doesnt keep an index, use an offchain index instead");
    }

    function facetAddresses() public view override returns (address[] memory) {
        this;
        revert("This implementation doesnt keep an index, use an offchain index instead");
    }

    function facetAddress(bytes4 $functionSelector) public view override returns (address) {
        VTable.VTableStore storage vtable = VTable.instance();
        return vtable.getFunction($functionSelector);
    }
}
