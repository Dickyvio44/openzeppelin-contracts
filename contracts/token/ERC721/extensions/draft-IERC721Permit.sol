// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC721 Permit extension allowing approvals to be made via signatures.
 *
 * Adds the {permit} method, which can be used to change a token's ERC721 approval (see {IERC721-approve}) by
 * presenting a message signed by the account. By not relying on {IERC721-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC721Permit {
    /**
     * @dev Sets approval for `tokenId` to `spender`, given `tokenId`'s ``owner``'s signed approval.
     *
     * Emits a {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `tokenId`'s owner
     * over the EIP712-formatted function arguments.
     * - the signature must use ``tokenId``'s current nonce (see {nonces}).
     */
    function permit(address spender, uint256 tokenId, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;

    /**
     * @dev Returns the current nonce for `tokenId`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``tokenId``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(uint256 tokenId) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}
