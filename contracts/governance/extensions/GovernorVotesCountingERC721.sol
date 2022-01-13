// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (governance/extensions/GovernorCountingSimple.sol)

pragma solidity ^0.8.0;

import "../Governor.sol";
import "../../utils/structs/BitMaps.sol";
import "../../token/ERC721/IERC721.sol";

/**
 * @dev Extension of {Governor} that include both vote fetching and counting for ERC721.
 * Uses a simple, 3 options, vote counting, with ERC721 tracking.
 *
 * _Available since v4.x._
 */
abstract contract GovernorVotesCountingERC721 is Governor {
    using BitMaps for BitMaps.BitMap;

    IERC721 public immutable token;

    /**
     * @dev Supported vote types. Matches Governor Bravo ordering.
     */
    enum VoteType {
        Against,
        For,
        Abstain
    }

    struct ProposalVote {
        uint256 againstVotes;
        uint256 forVotes;
        uint256 abstainVotes;
        BitMaps.BitMap hasVoted;
    }

    mapping(uint256 => ProposalVote) private _proposalVotes;

    constructor(IERC721 tokenAddress) {
        token = tokenAddress;
    }

    /**
     * @dev See {IGovernor-COUNTING_MODE}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function COUNTING_MODE() public pure virtual override returns (string memory) {
        return "support=bravo&quorum=for,abstain";
    }

    /**
     * @dev See {IGovernor-hasVoted}.
     */
    function hasVoted(uint256 proposalId, address account) public view virtual override returns (bool) {
        return false;
    }

    /**
     * @dev Alternative: check if an ERC721 token as been used for voting
     */
    function hasVoted(uint256 proposalId, uint256 tokenId) public view virtual returns (bool) {
        return _proposalVotes[proposalId].hasVoted.get(tokenId);
    }

    /**
     * @dev Accessor to the internal vote counts.
     */
    function proposalVotes(uint256 proposalId)
        public
        view
        virtual
        returns (
            uint256 againstVotes,
            uint256 forVotes,
            uint256 abstainVotes
        )
    {
        ProposalVote storage proposalvote = _proposalVotes[proposalId];
        return (proposalvote.againstVotes, proposalvote.forVotes, proposalvote.abstainVotes);
    }

    /**
     * @dev See {Governor-_quorumReached}.
     */
    function _quorumReached(uint256 proposalId) internal view virtual override returns (bool) {
        ProposalVote storage proposalvote = _proposalVotes[proposalId];

        return quorum(proposalSnapshot(proposalId)) <= proposalvote.forVotes + proposalvote.abstainVotes;
    }

    /**
     * @dev See {Governor-_voteSucceeded}. In this module, the forVotes must be strictly over the againstVotes.
     */
    function _voteSucceeded(uint256 proposalId) internal view virtual override returns (bool) {
        ProposalVote storage proposalvote = _proposalVotes[proposalId];

        return proposalvote.forVotes > proposalvote.againstVotes;
    }

    /**
     * @dev See {Governor-_countVote}. In this module, the support follows the `VoteType` enum (from Governor Bravo).
     */
    function _countVote(
        uint256 proposalId,
        address /*account*/,
        uint8 support,
        uint256 weight,
        bytes memory params
    ) internal virtual override {
        ProposalVote storage proposalvote = _proposalVotes[proposalId];

        uint256[] memory tokenIds = abi.decode(params, (uint256[]));
        for (uint256 i = 0; i<tokenIds.length; ++i) {
            require(!proposalvote.hasVoted.get(tokenIds[i]), "GovernorVotesCountingERC721: vote already cast");
            proposalvote.hasVoted.set(tokenIds[i]);
        }

        if (support == uint8(VoteType.Against)) {
            proposalvote.againstVotes += weight;
        } else if (support == uint8(VoteType.For)) {
            proposalvote.forVotes += weight;
        } else if (support == uint8(VoteType.Abstain)) {
            proposalvote.abstainVotes += weight;
        } else {
            revert("GovernorVotesCountingERC721: invalid value for enum VoteType");
        }
    }

    /**
     * Verify token are owned by the voter, and return the number of tokens (see {Governor-_getVotes}).
     */
    function _getVotes(address account, uint256 /*blockNumber*/, bytes memory params) internal view virtual override returns (uint256) {
        uint256[] memory tokenIds = abi.decode(params, (uint256[]));
        for (uint256 i = 0; i<tokenIds.length; ++i) {
            require(token.ownerOf(tokenIds[i]) == account, "GovernorVotesCountingERC721: token ownership is required for voting");
        }
        return tokenIds.length;
    }

    function _defaultParams() internal view virtual override returns (bytes memory) {
        return abi.encode(new uint256[](0));
    }
}
