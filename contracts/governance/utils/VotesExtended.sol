// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Checkpoints} from "../../utils/structs/Checkpoints.sol";
import {SafeCast} from "../../utils/math/SafeCast.sol";
import {Votes} from "./Votes.sol";

/**
 * @dev TODO
 */
abstract contract VotesExtended is Votes {
    using Checkpoints for Checkpoints.Trace208;
    using Checkpoints for Checkpoints.Trace160;

    mapping(address account => Checkpoints.Trace208) private _weightCheckpoints;
    mapping(address account => Checkpoints.Trace160) private _delegationCheckpoints;

    function getPastWeight(address account, uint256 timepoint) public view virtual returns (uint256) {
        uint48 currentTimepoint = clock();
        if (timepoint >= currentTimepoint) {
            revert ERC5805FutureLookup(timepoint, currentTimepoint);
        }
        return _weightCheckpoints[account].upperLookupRecent(SafeCast.toUint48(timepoint));
    }

    function getPastDelegate(address account, uint256 timepoint) public view virtual returns (address) {
        uint48 currentTimepoint = clock();
        if (timepoint >= currentTimepoint) {
            revert ERC5805FutureLookup(timepoint, currentTimepoint);
        }
        return address(_delegationCheckpoints[account].upperLookupRecent(SafeCast.toUint48(timepoint)));
    }

    function _delegate(address account, address delegatee) internal virtual override {
        _delegationCheckpoints[account].push(clock(), uint160(delegatee));
        super._delegate(account, delegatee);
    }

    function _transferVotingUnits(address from, address to, uint256 amount) internal virtual override {
        _weightCheckpoints[from].push(clock(), SafeCast.toUint208(_getVotingUnits(from)));
        _weightCheckpoints[to].push(clock(), SafeCast.toUint208(_getVotingUnits(to)));
        super._transferVotingUnits(from, to, amount);
    }
}
