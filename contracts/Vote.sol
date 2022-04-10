//SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Vote {
    
    enum VoteType {
        YES,
        NO
    }

    struct Proposal {
        uint yesVotes;
        uint noVotes;

        uint amountOfFunds;

        // Is proposal still open for voting?
        bool open;

        // Mapping to check if a voter has already voted
        mapping(address => bool) voters;
    }

    struct Member {
        // Array of NFTs that the member owns
        uint[] userNFTs;

        // Wallet address of the member
        address userAddress;
    }

    mapping (string => Proposal) public proposals;
    mapping (address => Member) public members;

    uint proposalCount;

    modifier isMember() {
        require(members[msg.sender].userNFTs.length > 0, "Invalid NFT Count");
        _;
    }

    event broadCastProposal(string _ipfsHashEvent, uint fundAmount, address _senderEvent);

    function submitProposal(string memory _ipfsHash, uint fundAmount) public {
        address sender;
        sender = msg.sender;
        emit broadCastProposal(_ipfsHash, fundAmount, sender);
    }

    function createProposal(string memory _proposalHash, uint fundAmount) external isMember {
        Proposal storage proposal = proposals[_proposalHash];

        proposal.open = true;
        proposal.yesVotes = 0;
        proposal.noVotes = 0;
        proposal.amountOfFunds = fundAmount;

        proposalCount++;
    }

    function tallyVote(string memory _proposalHash, VoteType _vote) external isMember {
        Proposal storage proposal = proposals[_proposalHash];
        require(proposal.voters[msg.sender] == false, "Member has already voted");
        require(proposal.open == true, "Proposal is closed for voting");

        proposal.voters[msg.sender] = true;

        uint votingPower = members[msg.sender].userNFTs.length;

        if (_vote == VoteType.YES)
        {
            proposal.yesVotes += votingPower;
        }
        else
        {
            proposal.noVotes += votingPower;
        }
    }

    function releaseFunds (string memory _proposalHash) external isMember {
        Proposal storage proposal = proposals[_proposalHash];
            
        proposal.open = false;
        if (proposal.yesVotes > proposal.noVotes)
        {
            //Do Something here 
        }
        else
        {
            //Do something here
        }
    }
}