/*
 * @source: https://github.com/cclabsInc/BlockChainExploitation/blob/master/2020_BlockchainFreeCourse/bad_randomness/vulnerableBlockHashGame.sol
 * @author: -
 * @vulnerable_at_lines: 32
 */


pragma solidity ^0.5.0;

contract vulnerableBlockHashGame {
    
    uint balance = 2 ether;
    mapping (address => uint) blockNumber;     
    bool public win; 
    
    constructor() public payable{
        require(msg.value >= 10 ether);
    }
    
    function get_block_number() internal  {   
        blockNumber[msg.sender] = uint(block.number);
    }
    
    function playGame() public payable {
        require (msg.value >= 1 ether);
        get_block_number();
    }
     
     
    function checkWinner() public payable { 
        // <yes> <report> BAD_RANDOMNESS
	    if (uint(blockhash(blockNumber[msg.sender])) % 2 == 0) {
	        win = true; 
		    msg.sender.transfer(balance);
		}else{
		    win = false;
		}
    }
    
    function wasteTime() public{
        uint test = uint(block.number);

     }

}