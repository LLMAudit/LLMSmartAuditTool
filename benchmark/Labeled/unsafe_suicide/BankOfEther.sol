/*
 * @source:https://github.com/cclabsInc/BlockChainExploitation/blob/master/2020_BlockchainFreeCourse/Tx.Origin/BankOfEther.sol
 * @author: -
 * @vulnerable_at_lines: 34
 */

pragma solidity ^0.6.6;

contract BankOfEther {
  address owner;
  mapping (address =>uint) balances;
  
  constructor() public {
    owner = msg.sender;
  }
    
  function deposit() public payable{
    balances[msg.sender] = balances[msg.sender]+msg.value;	
  }
    
  function transferTo(address payable to, uint amount) public payable {
    require(tx.origin == owner);
    to.transfer(amount);
  }

  function changeOwner(address newOwner) public{
    require(tx.origin == owner);
    owner = newOwner;
  }
 
  function kill() public {
    require(msg.sender == owner);
    // <yes> <report> unsafe_suicide
    selfdestruct(msg.sender);
  }
}