// SPDX-License-Identifier: MIT
/*
 * @source: https://blog.solidityscan.com/security-issues-with-delegate-calls-4ae64d775b76
 * @author: 
 * @vulnerable_at_lines: 35
 */

pragma solidity ^0.7.0;

contract Delegate {

    address public owner;

    constructor(address _owner) public {
        owner = _owner;
    }

    function pwn() public {
        owner = msg.sender;
    }
}

contract Delegation {

    address public owner;
    Delegate delegate;

    constructor(address _delegateAddress) public {
        delegate = Delegate(_delegateAddress);
        owner = msg.sender;
    }

    fallback() external {
        // <yes> <report> unsafe delegatecall
        (bool result,) = address(delegate).delegatecall(msg.data);
        if (result) {
            this;
        }
    }
}