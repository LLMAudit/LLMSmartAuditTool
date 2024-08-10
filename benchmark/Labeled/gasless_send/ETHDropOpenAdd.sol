/*
 * @source: Source Code first verified at https://etherscan.io on Friday
 * @author: -
 * @vulnerable_at_lines: 48,55,62
 */

pragma solidity ^0.5.0;

/**
 * @title Open-add Ether airdrop for members.
 * @author Ross_Campbell, Bill_Warren and Scott H Stevenson of LexDAO
 */

contract ETHDropOpenAdd {

    struct Member {
        bool exists;
        uint memberIndex;
    }

    mapping(address => Member) public memberList;
    address payable[] members;
    uint256 public drip;
    address payable private secretary;
    

    modifier onlySecretary() {
        require(msg.sender == secretary);
        _;
    }

    function() external payable { }


    constructor(uint256 _drip, address payable[] memory _members) payable public {
        drip = _drip;

         for (uint256 i = 0; i < _members.length; i++) {
            require(_members[i] != address(0), "member address cannot be 0");
            memberList[_members[i]].exists = true;
            memberList[_members[i]].memberIndex = members.push(_members[i]) - 1;
        }

        secretary = members[0];
    }
    
// <yes> <report> Gasless_Send
    function dripETH() public onlySecretary {
        for (uint256 i = 0; i < members.length; i++) {
            members[i].transfer(drip);
        }
    }
    
// <yes> <report> Gasless_Send
    function dropETH(uint256 drop) payable public onlySecretary {
        for (uint256 i = 0; i < members.length; i++) {
            members[i].transfer(drop);
        }
    }
    
// <yes> <report> Gasless_Send
    function customDropETH(uint256[] memory drop) payable public onlySecretary {
        for (uint256 i = 0; i < members.length; i++) {
            members[i].transfer(drop[i]);
        }
    }


    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }


    function addMember(address payable newMember) public {
        require(memberList[newMember].exists != true, "member already exists");
        memberList[newMember].exists = true;
        memberList[newMember].memberIndex = members.push(newMember) - 1;
    }
    

    function getMembership() public view returns (address payable[] memory) {
        return members;
    }
    

    function getMemberCount() public view returns(uint256 memberCount) {
        return members.length;
    }


    function isMember(address memberAddress) public view returns (bool memberExists) {
        if(members.length == 0) return false;
        return (members[memberList[memberAddress].memberIndex] == memberAddress);
    }


    function removeMember(address _removeMember) public onlySecretary {
        require(memberList[_removeMember].exists = true, "no such member to remove");
        uint256 memberToDelete = memberList[_removeMember].memberIndex;
        address payable keyToMove = members[members.length-1];
        members[memberToDelete] = keyToMove;
        memberList[_removeMember].exists = false;
        memberList[keyToMove].memberIndex = memberToDelete;
        members.length--;
    }


    function transferSecretary(address payable newSecretary) public onlySecretary {
        secretary = newSecretary;
    }
    

    function updateDrip(uint256 newDrip) public onlySecretary {
        drip = newDrip;
    }
}

contract ETHDropFactory {
    ETHDropOpenAdd private Drop;
    address[] public drops;
    

    event newDrop(address indexed secretary, address indexed drop);
    

    function newETHDropOpenAdd(uint256 _drip, address payable[] memory _members) payable public {
        Drop = (new ETHDropOpenAdd).value(msg.value)(_drip, _members);
        drops.push(address(Drop));
        emit newDrop(_members[0], address(Drop));
    }
}