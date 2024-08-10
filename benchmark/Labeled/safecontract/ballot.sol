/*
 * @source: http://remix.ethereum.org/
 * @author: -
 * @vulnerable_at_lines: 0
 */


pragma solidity ^0.4.0;

contract Ballot{
    struct Voter{
        uint weight;
        bool voted;
        uint vote;
        address delegate;
    }
    struct Proposal{
        uint voteCount;
    }
    address public chairperson;
    Proposal[] public proposals;
    mapping(address => Voter) voters;

    constructor(uint8 _numberProposals) public{
        chairperson = msg.sender;
        voters[chairperson].weight = 1;
        proposals.length = _numberProposals;
    }
    function giveRightToVote(address voter) public{
        require(msg.sender == chairperson);
        require(voters[voter].voted == false);
        require(voters[voter].weight == 0);
        voters[voter].weight = 1;
    }
    function delegate(address to) public {
        Voter storage sender = voters[msg.sender];
        require(!sender.voted);
        require(to != msg.sender);
        while(voters[to].delegate != address(0) && voters[to].delegate != msg.sender){
            to = voters[to].delegate;
        }
        require(to != msg.sender);
        sender.voted = true;
        sender.delegate = to;
        Voter storage delegateTo = voters[to];
        if(delegateTo.voted){
            proposals[delegateTo.vote].voteCount += sender.weight; 
        }else{
            delegateTo.weight += sender.weight;
        }
    }

    function vote(uint proposal) public {
        Voter storage sender = voters[msg.sender];
        require(!sender.voted);
        sender.voted = true;
        sender.vote = proposal;
        proposals[proposal].voteCount += sender.weight;
    }
    function winningProposal() public view returns(uint _winningProposal){
        uint winningCount = 0;
        for(uint prop = 0; prop < proposals.length; prop++){
            if(proposals[prop].voteCount > winningCount){
                winningCount = proposals[prop].voteCount;
                _winningProposal = prop;
            }
        }
    }

}