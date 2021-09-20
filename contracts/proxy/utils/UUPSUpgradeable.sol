// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.0;

import "../ERC1967/ERC1967Upgrade.sol";

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 *
 * _Available since v4.1._
 */
abstract contract UUPSUpgradeable is ERC1967Upgrade {
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable state-variable-assignment
    address private immutable __self = address(this);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        require(address(this) != __self, "Function must be called through delegatecall");
        require(_getImplementation() == __self, "Function must be called through active proxy");
        _;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeTo(address newImplementation) external virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallSecure(newImplementation, new bytes(0), false);
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) external payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallSecure(newImplementation, data, true);
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallSecure(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) private {
        _upgradeToAndCall(newImplementation, data, forceCall);

        // Perform rollback test if not already in progress
        StorageSlot.BooleanSlot storage rollbackTesting = StorageSlot.getBooleanSlot(_ROLLBACK_SLOT);
        if (!rollbackTesting.value) {
            rollbackTesting.value = true;

            /// @custom:oz-upgrades-unsafe-allow delegatecall
            (bool success, bytes memory returndata) = __self.delegatecall(abi.encodeWithSignature("__checkRollback()"));

            // This call is expected to revert with error Error(string(abi.encodePacked(_getImplementation())));
            //
            // | ↓ returndata      | ←←←←←←←←←←←←←←←←←←←←←←←←←←←←← length = 100 →→→→→→→→→→→→→→→→→→→→→→→→→→→→→ |
            // | 0              31 | 32          35 | 36         67 | 68             99 | 100             131 |
            // | returndata.length | error.selector | string.length | abi.encode.length | _getImplemntation() |

            // Check call reverts and length is correct
            require(!success && returndata.length == 100, "ERC1967Upgrade: upgrade breaks further upgrades");

            // Extract values
            bytes4 sig;
            address impl;
            assembly {
                sig := mload(add(returndata, 32))
                impl := mload(add(returndata, 100))
            }

            // Check revert data matchs the expect implementation. 0x08c379a0 is the selector of Error(string)
            require(sig == 0x08c379a0 && impl == __self, "ERC1967Upgrade: upgrade breaks further upgrades");

            rollbackTesting.value = false;
        }
    }

    /**
     * @dev External security check used by {_upgradeToAndCallSecure}.
     *
     * Note: Will always revert. Revert data is used to identify result.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    function __checkRollback() external {
        /// @custom:oz-upgrades-unsafe-allow delegatecall
        (bool success, ) = address(this).delegatecall(abi.encodeWithSignature("upgradeTo(address)", __self));
        // if failure revert with empty data, otherwize pass rollback result through the revert returndata
        revert(success ? string(abi.encode(_getImplementation())) : "");
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeTo} and {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal override onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;
}
