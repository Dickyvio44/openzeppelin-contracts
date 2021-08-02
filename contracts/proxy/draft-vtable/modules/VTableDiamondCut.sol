// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../VTable.sol";
import "../../../utils/Address.sol";
import "../../../utils/Context.sol";

import "./IDiamondCut.sol";

contract VTableDiamondCut is Context, IDiamondCut {
    using VTable for VTable.VTableStore;

    function diamondCut(FacetCut[] calldata $diamondCut, address $init, bytes memory $calldata) public override {
        VTable.VTableStore storage vtable = VTable.instance();
        require(VTable.instance().getOwner() == _msgSender(), "VTableOwnership: caller is not the owner");

        emit DiamondCut($diamondCut, $init, $calldata);

        for (uint256 i = 0; i < $diamondCut.length; ++i) {
            FacetCut memory facetcut = $diamondCut[i];
            for (uint256 j = 0; j < facetcut.functionSelectors.length; ++j) {
                address currentFacet = vtable.getFunction(facetcut.functionSelectors[j]);
                require(facetcut.action != FacetCutAction.Add     || currentFacet == address(0),            "Facet already exists");
                require(facetcut.action != FacetCutAction.Replace || currentFacet == facetcut.facetAddress, "Facet already set");
                require(facetcut.action != FacetCutAction.Remove  || currentFacet != address(0),            "Facet does not exist");
                vtable.setFunction(facetcut.functionSelectors[j], facetcut.facetAddress);
            }
        }

        Address.functionCall($init, $calldata);
    }
}
