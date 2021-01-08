// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

import "../token/ERC20/SafeERC20.sol";
import "../token/ERC721/ERC721.sol";
import "../utils/Address.sol";

/**
 * @dev Contract module which allows to recover Tokens or Ether that would
 * otherwize be stuck on the contract
 *
 * This module is used through inheritance. Note that the recovery methods can,
 * if used inproperly, break some contracts. Always be extremmely carefull when
 * calling these functions. In particular, you might want to restrict access.
 */
library TokenRecover {
    /**
     * @dev recover ETH and ERC20-compatible tokens. Transfer the entier
     * balance to `to`
     */
    function recover(address token, address to) internal {
        if (token == address(0)) {
            Address.sendValue(payable(to), address(this).balance);
        } else {
            SafeERC20.safeTransfer(IERC20(token), to, IERC20(token).balanceOf(address(this)));
        }
    }

    /**
     * @dev recover ERC721 tokens. Transfer the token `id` to `to`
     */
    function recover(address token, uint256 id, address to) internal {
        IERC721(token).transferFrom(address(this), to, id);
    }
}
