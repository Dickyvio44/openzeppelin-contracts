// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {SignatureChecker} from "../../utils/cryptography/SignatureChecker.sol";
import {SafeCast} from "../../utils/math/SafeCast.sol";
import {VotesExtended} from "../utils/VotesExtended.sol";
import {GovernorVotes} from "./GovernorVotes.sol";

abstract contract GovernorCountingOverridable is GovernorVotes {
    bytes32 public constant OVERRIDE_TYPEHASH =
        keccak256("Override(uint256 proposalId,uint8 support,address voter,uint256 nonce)");

    /**
     * @dev Supported vote types. Matches Governor Bravo ordering.
     */
    enum VoteType {
        Against,
        For,
        Abstain
    }

    struct VoterDetails {
        uint8 casted;
        bool voteOverriden;
        uint240 weightOverriden;
    }

    struct ProposalVote {
        uint256[3] votes; // against, for, abstain
        mapping(address voter => VoterDetails) details;
    }

    mapping(uint256 proposalId => ProposalVote) private _proposalVotes;

    error GovernorVotesAlreadyOverriden();

    /**
     * @dev See {IGovernor-COUNTING_MODE}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function COUNTING_MODE() public pure virtual override returns (string memory) {
        return "support=bravo&quorum=for,abstain&overridable=true";
    }

    /**
     * @dev See {IGovernor-hasVoted}.
     */
    function hasVoted(uint256 proposalId, address account) public view virtual override returns (bool) {
        return _proposalVotes[proposalId].details[account].casted > 0;
    }

    /**
     * @dev Accessor to the internal vote counts.
     */
    function proposalVotes(
        uint256 proposalId
    ) public view virtual returns (uint256 againstVotes, uint256 forVotes, uint256 abstainVotes) {
        uint256[3] storage votes = _proposalVotes[proposalId].votes;
        return (votes[0], votes[1], votes[2]);
    }

    /**
     * @dev See {Governor-_quorumReached}.
     */
    function _quorumReached(uint256 proposalId) internal view virtual override returns (bool) {
        uint256[3] storage votes = _proposalVotes[proposalId].votes;
        return quorum(proposalSnapshot(proposalId)) <= votes[1] + votes[2];
    }

    /**
     * @dev See {Governor-_voteSucceeded}. In this module, the forVotes must be strictly over the againstVotes.
     */
    function _voteSucceeded(uint256 proposalId) internal view virtual override returns (bool) {
        uint256[3] storage votes = _proposalVotes[proposalId].votes;
        return votes[1] > votes[0];
    }

    /**
     * @dev See {Governor-_countVote}. In this module, the support follows the `VoteType` enum (from Governor Bravo).
     */
    function _countVote(
        uint256 proposalId,
        address account,
        uint8 support,
        uint256 totalWeight,
        bytes memory // params
    ) internal virtual override returns (uint256) {
        ProposalVote storage proposalVote = _proposalVotes[proposalId];

        // check support validity
        if (support > uint8(VoteType.Abstain)) {
            revert GovernorInvalidVoteType();
        }
        // prevent double voting (and register support)
        if (proposalVote.details[account].casted == 0) {
            revert GovernorAlreadyCastVote(account);
        }
        proposalVote.details[account].casted = support + 1;

        // deduce any weight that was overriden by delegators
        totalWeight -= proposalVote.details[account].weightOverriden;

        // count votes
        proposalVote.votes[support] += totalWeight;

        return totalWeight;
    }

    function _overrideVote(uint256 proposalId, address account, uint8 support) internal virtual returns (uint256) {
        ProposalVote storage proposalVote = _proposalVotes[proposalId];

        if (proposalVote.details[account].voteOverriden) {
            revert GovernorVotesAlreadyOverriden();
        }
        proposalVote.details[account].voteOverriden = true;

        uint256 snapshot = proposalSnapshot(proposalId);
        address delegate = VotesExtended(address(token())).getPastDelegate(account, snapshot);
        uint256 weight = VotesExtended(address(token())).getPastWeight(account, snapshot);
        uint8 casted = proposalVote.details[delegate].casted;

        if (casted == 0) {
            // delegate has not voted yet
            proposalVote.details[delegate].weightOverriden += SafeCast.toUint240(weight);
            proposalVote.votes[support] += weight;
        } else if (support != casted - 1) {
            proposalVote.votes[casted - 1] -= weight;
            proposalVote.votes[support] += weight;
        }

        // TODO emit event

        return weight;
    }

    function overrideVote(uint256 proposalId, uint8 support) public virtual returns (uint256) {
        _validateStateBitmap(proposalId, _encodeStateBitmap(ProposalState.Active));

        address voter = _msgSender();
        return _overrideVote(proposalId, voter, support);
    }

    function overrideVoteBySig(
        uint256 proposalId,
        uint8 support,
        address voter,
        bytes memory signature
    ) public virtual returns (uint256) {
        _validateStateBitmap(proposalId, _encodeStateBitmap(ProposalState.Active));

        if (
            !SignatureChecker.isValidSignatureNow(
                voter,
                _hashTypedDataV4(
                    keccak256(abi.encode(OVERRIDE_TYPEHASH, proposalId, support, voter, _useNonce(voter)))
                ),
                signature
            )
        ) {
            revert GovernorInvalidSignature(voter);
        }

        return _overrideVote(proposalId, voter, support);
    }
}
