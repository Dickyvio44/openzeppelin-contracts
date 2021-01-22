// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Proxy.sol";
import "../utils/Address.sol";
import "./IBeacon.sol";

/**
 * @dev This contract implements a proxy that gets the implementation address for each call from a {UpgradeableBeacon}.
 *
 * The beacon address is stored in an immutable "variable".
 */
contract ImmutableBeaconProxy is Proxy {
    IBeacon immutable private _beacon;

    /**
     * @dev Initializes the proxy with `beacon`.
     *
     * If `data` is nonempty, it's used as data in a delegate call to the implementation returned by the beacon. This
     * will typically be an encoded function call, and allows initializating the storage of the proxy like a Solidity
     * constructor.
     *
     * Requirements:
     *
     * - `beacon` must be a contract with the interface {IBeacon}.
     */
    constructor(address beacon, bytes memory data) payable {
        require(
            Address.isContract(beacon),
            "BeaconProxy: beacon is not a contract"
        );
        require(
            Address.isContract(IBeacon(beacon).implementation()),
            "BeaconProxy: beacon implementation is not a contract"
        );

        _beacon = IBeacon(beacon);

        if (data.length > 0) {
            // cannot call `_implementation()` because immutable variables cannot be read during construction.
            Address.functionDelegateCall(IBeacon(beacon).implementation(), data, "BeaconProxy: function call failed");
        }
    }

    /**
     * @dev Returns the current implementation address of the associated beacon.
     */
    function _implementation() internal view override returns (address) {
        return _beacon.implementation();
    }
}
