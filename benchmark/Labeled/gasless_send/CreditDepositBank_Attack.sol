/*
 * @source: https://github.com/ntu-SRSLab/vultron/blob/master/benchmark/gaslesssend/CreditDepositBank/
 * @author: Vultron
 * @vulnerable_at_lines: 64,71
 */

pragma solidity ^0.4.17;

contract Ownable {
    address public owner;

    function Ownable() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract CreditDepositBank is Ownable {
    mapping (address => uint) public balances;
    
    address public owner;

    function takeOver() public {
        if (balances[msg.sender] > 0) {
            owner = msg.sender;
        }
    }
    
    address public manager;
    
    modifier onlyManager() {
        require(msg.sender == manager);
        _;
    }

    function setManager(address _manager) public {
         if (balances[_manager] > 100 finney) {
            manager = _manager;
         }
    }

    function getManager() public view returns (address){
        return manager;
    }

    function() public payable {
        deposit();
    }
    
    function deposit() public payable {
        if (msg.value >= 10 finney)
            balances[msg.sender] += msg.value;
        else
            revert();
    }
    
    function withdraw(address client) public onlyOwner {
        require (balances[client] > 0);
         // <yes> <report> Gasless_Send
        msg.sender.send(balances[client]);
    }

    function credit() public payable {
        if (msg.value >= this.balance) {
            balances[msg.sender] -= this.balance + msg.value;
             // <yes> <report> Gasless_Send
            msg.sender.send(this.balance + msg.value);
        }
    }

    function showBalance(address account) public returns (uint balance) {
        return balances[account];
    }

    function close() public onlyManager {
        manager.send(this.balance);
	    if (this.balance == 0) {  
		    selfdestruct(manager);
	    }
    }
}

contract Attack_CreditDepositBank {

    CreditDepositBank public target_contract;

    function Attack_CreditDepositBank0(address _targetContract) public payable {
        target_contract = CreditDepositBank(_targetContract);
    } 

    function vultron_takeOver() public {
    target_contract.takeOver();
    } 

    function vultron_setManager(address _manager) public {
    target_contract.setManager(_manager);
    } 

    function vultron_withdraw(address client) public {
    target_contract.withdraw(client);
    } 

    function vultron_showBalance(address account) public {
    target_contract.showBalance(account);
    } 

    function vultron_close() public {
    target_contract.close();
    } 

    function vultron_deposit(uint256 vultron_amount) public payable{
    target_contract.deposit.value(vultron_amount)();
    } 

    function vultron_credit(uint256 vultron_amount) public payable{
    target_contract.credit.value(vultron_amount)();
    } 

    function() public payable {

    target_contract.takeOver();
    }
} 