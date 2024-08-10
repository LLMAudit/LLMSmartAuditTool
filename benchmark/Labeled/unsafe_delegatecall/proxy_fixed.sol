/*
 * @source: https://github.com/christoftorres/ConFuzzius/tree/master/dataset/curated
 * @author: -
 * @vulnerable_at_lines: 30
 */

pragma solidity ^0.4.24;

contract Proxy {

  address callee;
  address owner;

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  constructor() public {
  	callee = address(0x0);
    owner = msg.sender;
  }

  function setCallee(address newCallee) public onlyOwner {
  	callee = newCallee;
  }

  function forward(bytes _data) public {
    // <yes> <report> unsafe delegatecall
    require(callee.delegatecall(_data));
  }

}