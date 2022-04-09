//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract VotingContract {
    
    struct Proposal {
        
        uint yesVotes;
        uint noVotes;

        // Is proposal still open for voting?
        bool open;

        // Mapping to check if a voter has already voted
        mapping(address => bool) voters;
    }

    struct Member {
        // Array of NFTs that the member owns
        uint[] userNFTs;
    }

    mapping (string => Proposal) public proposals;
    mapping (address => Member) public members;

    uint public votingPower;

    modifier isMember() {
        require(members[msg.sender].userNFTs.length > 0, "Invalid NFT Count");
        _;
    }

    function createProposal(string memory _proposalHash) external isMember {
            //Purpose: Initialize a new struct
            //         Fill struct with new values
    }

    function tallyVote(string memory _proposalHash, address voter) external isMember {
            //Purpose: Look at proposal in question
            //         Assign votingPower = members[msg.sender].userNFTs.length;
            //         Two conditionals: Yes or no for voting
    }

    function releaseFunds (string memory _proposalHash) external isMember {
            //Purpose: Take funds from funds wallet and transfer them to wallet of proposal owner
            //         Set open = false;
            //         Two conditionals: Is yes votes greater than no votes?
            
    }
}