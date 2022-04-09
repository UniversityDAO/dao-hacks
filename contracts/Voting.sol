// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface VotingInterface {

event broadCastProposal(string _ipfsHashEvent, address _senderEvent );

function submitProposal(string memory _ipfsHash ) public {
    address sender;
    sender = msg.sender;
    emit broadCastProposal(_ipfsHash, sender);
}

    // @dev releaseFunds transfers the tokens from DAO wallet to the wallet of the proposal owner
    // @param string proposalHash retrieves the amount requested from IPFS
    function releaseFunds(string memory proposalHash) external view;

    // @dev verifyOpenStatus tests whether or not the current proposal is still open for voting 
    // @param string proposalHash represents the hash of the proposal in question
    // @return bool specifies whether or not the contract is still open
    function verifyOpenStatus(string memory proposalHash) external view returns (bool);

    // @dev verifyVoter tests whether or not the voter has already voted
    // @param address voter represents the address of the voter
    // @return bool returns true or false (has user already voted or not?)
    function verifyVoter(address voter) external view returns (bool);

    // @dev closeProposal marks the proposal as closed
    // @param string proposalHash represents the hash of the proposal in question
    function closeProposal(string memory proposalHash) external view;

    // @dev ownerOf retrieves the owner of whoever started the proposal
    // @param string proposal Hash represents the hash of the proposal in question
    // @return address returns the address of whoever owns the proposal
    function ownerOf(string memory proposalHash) external view returns (address);

    // @dev balanceOf retrieves the NFT balance of the voter (to determine voting weight)
    // @param address voter represents the address of the voter
    // @return uint represents the NFT count of voter
    function balanceOf(address voter) external view returns (uint);

    // @dev tallyVote increments totalVotes by voters voting weight, and also increment yesVotes by voters voting weight if they indicate yes
    // @param string proposalHash represents the hash of the proposal in question
    // @param address voter represents the address of the voter 
    function tallyVote(string memory proposalHash, address voter) external view;

    // @dev passStatus returns whether or not the vote passed (yesVotes/totalVotes >= 0.50)
    // @param string proposalHash represents the hash of the proposal in question
    // @return bool returns whether vote passed or not 
    function passStatus (string memory proposalHash) external view returns (bool);
}
