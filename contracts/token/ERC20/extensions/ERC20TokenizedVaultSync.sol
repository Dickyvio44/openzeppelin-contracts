// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC20TokenizedVault.sol";

/**
 * @dev
 */
abstract contract ERC20TokenizedVaultSync is ERC20TokenizedVault {
    uint256 private _totalAssets;

    constructor() {
        _sync();
    }

    function totalAssets() public view virtual override returns (uint256) {
        return _totalAssets;
    }

    function _sync() internal virtual {
        _totalAssets = IERC20(asset()).balanceOf(address(this));
    }

    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal virtual override {
        // For _deposit, the updates are done after the transfer, because an
        // ERC777 can cause a reentrance before balance is updated.
        super._deposit(caller, receiver, assets, shares);
        _totalAssets += assets;
    }

    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal virtual override {
        // For _withdraw, the updates are done before the transfer, because an
        // ERC777 can cause a reentrance after balance is updated.
        _totalAssets -= assets;
        super._withdraw(caller, receiver, owner, assets, shares);
    }
}
