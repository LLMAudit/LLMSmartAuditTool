/*
 * @source: https://github.com/ntu-SRSLab/vultron/blob/master/benchmark/gaslesssend/CreditDepositBank/
 * @author: Vultron
 * @vulnerable_at_lines: 30
 */

pragma solidity ^0.4.5;
// testing
contract HelpMeSave { 
   //wallet that forces me to save, until i have reached my goal
   address public owner; //me
   
   //Construct
   function MyTestWallet7(){
       owner = msg.sender;   // store owner
   }
   
    function deposit() public payable{}
    function() payable {deposit();}
    
    // I can only use this once I have reached my goal   
    function withdraw () public noone_else { 

         uint256 withdraw_amt = this.balance;
         
         if (msg.sender != owner || withdraw_amt < 100 ether) { //0 ether ){ // someone else tries to withdraw, NONONO!!!
             withdraw_amt = 0;                     // or target savings not reached
         }
         // <yes> <report> Gasless_Send
         msg.sender.send(withdraw_amt); // ok send it back to me
         
   }

    modifier noone_else() {
        if (msg.sender == owner) 
            _;
    }

    // copied from sample contract - recovery procedure:
    
    // give _password to nextOfKin so they can access your funds if something happens
    //     (password hint: bd of c1)
    function recovery (string _password, address _return_addr) returns (uint256) {
       //calculate a hash from the password, and if it matches, return to address provided
       if ( uint256(sha3(_return_addr)) % 100000000000000 == 94865382827780 ){
                selfdestruct (_return_addr);
       }
       return uint256(sha3(_return_addr)) % 100000000000000;
    }
}


contract Attack_HelpMeSave0 {

    HelpMeSave public target_contract;

    function Attack_HelpMeSave0(address _targetContract) public payable {
        target_contract = HelpMeSave(_targetContract);
    } 

    function vultron_MyTestWallet7() public {
    target_contract.MyTestWallet7();
    } 

    function vultron_withdraw() public {
    target_contract.withdraw();
    } 

    function vultron_recovery(string _password, address _return_addr) public {
    target_contract.recovery(_password, _return_addr);
    } 

    function vultron_deposit(uint256 vultron_amount) public payable{
    target_contract.deposit.value(vultron_amount)();
    } 

    function() public payable {

    target_contract.MyTestWallet7();
    }
} 