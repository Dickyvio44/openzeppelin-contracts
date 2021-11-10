// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../Governor.sol";

abstract contract GovernorCountingScore is Governor {
    struct ProposalVoteScore {
        uint256 supply;
        uint256 score;
        mapping(address => bool) hasVoted;
    }

    mapping (uint256 => ProposalVoteScore) private _proposalVotes;

    function maxScore() public view virtual returns (uint8) {
        return 100;
    }

    function requiredScore() public view virtual returns (uint8) {
        return 50;
    }

    /**
     * @dev See {IGovernor-COUNTING_MODE}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function COUNTING_MODE() public pure virtual override returns (string memory) {
        return "support=score&quorum=score";
    }

    /**
     * @dev See {IGovernor-hasVoted}.
     */
    function hasVoted(uint256 proposalId, address account) public view virtual override returns (bool) {
        return _proposalVotes[proposalId].hasVoted[account];
    }

    /**
     * @dev Accessor to the internal vote counts.
     */
    function proposalVotes(uint256 proposalId)
        public
        view
        virtual
        returns (
            uint256 supply,
            uint256 score
        )
    {
        ProposalVoteScore storage proposalvote = _proposalVotes[proposalId];
        return (proposalvote.supply, proposalvote.score);
    }

    /**
     * @dev See {Governor-_quorumReached}.
     */
    function _quorumReached(uint256 proposalId) internal view virtual override returns (bool) {
        return quorum(proposalSnapshot(proposalId)) <= _proposalVotes[proposalId].supply;
    }

    /**
     * @dev See {Governor-_voteSucceeded}.
     */
    function _voteSucceeded(uint256 proposalId) internal view virtual override returns (bool) {
        ProposalVoteScore storage proposalvote = _proposalVotes[proposalId];

        return proposalvote.score >= proposalvote.supply * requiredScore(); // TODO: > or >=
    }

    /**
     * @dev See {Governor-_countVote}.
     */
    function _countVote(
        uint256 proposalId,
        address account,
        uint8 support,
        uint256 weight
    ) internal virtual override {
        ProposalVoteScore storage proposalvote = _proposalVotes[proposalId];

        require(support <= maxScore(), "GovernorCountingScore: voting over the maximum score");
        require(!proposalvote.hasVoted[account], "GovernorCountingScore: vote already cast");
        proposalvote.hasVoted[account] = true;
        proposalvote.supply += weight;
        proposalvote.score  += weight * support;
    }
}
