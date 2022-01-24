// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Ownable.sol";

/**
 * @dev A extension to the {Ownable} contract that implements the pending
 * admin workflow. According to this workflow, the current owner can assign
 * a new "pending" admin and keep full ownership until the pending admin
 * accepts this role.
 */
abstract contract Claimable is Ownable {
    address private _pendingOwner;

    event NewPendingOwner(address indexed newPendingOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyPendingOwner() {
        require(pendingOwner() == _msgSender(), "Claimable: caller is not the pending owner");
        _;
    }

    /**
     * @dev Access the pending ownership, transfer full ownership of the contract.
     */
    function acceptOwnership() public onlyPendingOwner() {
        _transferOwnership(_pendingOwner);
        _setPendingAdmin(address(0));
    }

    /**
     * @dev Give pending ownership to another account. The current owner remains
     * active until this pending ownership is accepted.
     */
    function setPendingAdmin(address newPendingOwner) public onlyOwner() {
        _setPendingAdmin(newPendingOwner);
    }

    /**
     * @dev Set pending ownership of the contract to a new account (`newPendingOwner`).
     * Internal function without access restriction.
     */
    function _setPendingAdmin(address newPendingOwner) internal {
        _pendingOwner = newPendingOwner;
        emit NewPendingOwner(newPendingOwner);
    }
}