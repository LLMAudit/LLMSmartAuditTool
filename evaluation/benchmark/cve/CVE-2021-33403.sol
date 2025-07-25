/**
 *Submitted for verification at etherscan.io on 2018-03-22
*/

//--------------------------------------------------------------//
//---------------------BLOCKLANCER TOKEN -----------------------//
//--------------------------------------------------------------//

pragma solidity ^0.4.8;

/// Migration Agent
/// allows us to migrate to a new contract should it be needed
/// makes blocklancer future proof
contract MigrationAgent {
    function migrateFrom(address _from, uint256 _value);
}

contract ERC20Interface {
     // Get the total token supply
     function totalSupply() constant returns (uint256 totalSupply);
  
     // Get the account balance of another account with address _owner
     function balanceOf(address _owner) constant returns (uint256 balance);
  
     // Send _value amount of tokens to address _to
     function transfer(address _to, uint256 _value) returns (bool success);
  
     // Send _value amount of tokens from address _from to address _to
     function transferFrom(address _from, address _to, uint256 _value) returns (bool success);
  
     // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
     // If this function is called again it overwrites the current allowance with _value.
     // this function is required for some DEX functionality
     function approve(address _spender, uint256 _value) returns (bool success);
  
     // Returns the amount which _spender is still allowed to withdraw from _owner
     function allowance(address _owner, address _spender) constant returns (uint256 remaining);
  
     // Triggered when tokens are transferred.
     event Transfer(address indexed _from, address indexed _to, uint256 _value);
  
     // Triggered whenever approve(address _spender, uint256 _value) is called.
     event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

/// Blocklancer Token (LNC) - crowdfunding code for Blocklancer Project
contract BlocklancerToken is ERC20Interface {
    string public constant name = "Lancer Token";
    string public constant symbol = "LNC";
    uint8 public constant decimals = 18;  // 18 decimal places, the same as ETH.
    
    mapping(address => mapping (address => uint256)) allowed;

    uint public fundingStart;

    // The flag indicates if the LNC contract is in Funding state.
    bool public funding = true;
    bool allowTransfer=false;

    // Receives ETH and its own LNC endowment.
    address public master;

    // The current total token supply.
    uint256 totalTokens;
    
    uint exchangeRate=20000;
	uint EarlyInvestorExchangeRate=25000;
	
	bool startRefund=false;

    mapping (address => uint256) balances;
    mapping (address => bool) initialInvestor;
    mapping (address => uint) lastTransferred;
    
    //needed to refund everyone should the ICO fail
    // needed because the price per LNC isn't linear
    mapping (address => uint256) balancesEther;

    //address of the contract that manages the migration
    //can only be changed by the creator
    address public migrationAgent;
    
    //total amount of token migrated
    //allows everyone to see the progress of the migration
    uint256 public totalMigrated;

    event Migrate(address indexed _from, address indexed _to, uint256 _value);
    event Refund(address indexed _from, uint256 _value);
    
    //total amount of participants in the ICO
    uint totalParticipants;

    function BlocklancerToken() {
   }
    
    //returns the total amount of participants in the ICO
    function getAmountofTotalParticipants() constant returns (uint){
        return totalParticipants;
    }

    /// allows to transfer token to another address
    function transfer(address _to, uint256 _value) returns (bool success) {
        // Don't allow in funding state
        if(funding) throw;
        if(!allowTransfer)throw;

        var senderBalance = balances[msg.sender];
        //only allow if the balance of the sender is more than he want's to send
        if (senderBalance >= _value && _value > 0) {
            //reduce the sender balance by the amount he sends
            senderBalance -= _value;
            balances[msg.sender] = senderBalance;
            
            //increase the balance of the receiver by the amount we reduced the balance of the sender
            balances[_to] += _value;
            
            //saves the last time someone sent LNc from this address
            //is needed for our Token Holder Tribunal
            //this ensures that everyone can only vote one time
            //otherwise it would be possible to send the LNC around and everyone votes again and again
            lastTransferred[msg.sender]=block.timestamp;
            Transfer(msg.sender, _to, _value);
            return true;
        }
        //transfer failed
        return false;
    }

    //returns the total amount of LNC in circulation
    //get displayed on the website whilst the crowd funding
    function totalSupply() constant returns (uint256 totalSupply) {
        return totalTokens;
    }
    
    //retruns the balance of the owner address
    function balanceOf(address _owner) constant returns (uint256 balance) {
        return balances[_owner];
    }
    
    //returns the amount anyone pledged into this contract
    function EtherBalanceOf(address _owner) constant returns (uint256) {
        return balancesEther[_owner];
    }
    
    //returns the amount anyone pledged into this contract
    function isInitialInvestor(address _owner) constant returns (bool) {
        return initialInvestor[_owner];
    }
    
    //time left before the crodsale begins
    function TimeLeftBeforeCrowdsale() external constant returns (uint256) {
        if(fundingStart>block.timestamp)
            return fundingStart-block.timestamp;
        else
            return 0;
    }

    // allows us to migrate to anew contract
    function migrate(uint256 _value) external {
        // can only be called if the funding ended
        if(funding) throw;
        
        //the migration agent address needs to be set
        if(migrationAgent == 0) throw;

        // must migrate more than nothing
        if(_value == 0) throw;
        
        //if the value is higher than the sender owns abort
        if(_value > balances[msg.sender]) throw;

        //reduce the balance of the owner
        balances[msg.sender] -= _value;
        
        //reduce the token left in the old contract
        totalTokens -= _value;
        totalMigrated += _value;
        
        //call the migration agent to complete the migration
        //credits the same amount of LNC in the new contract
        MigrationAgent(migrationAgent).migrateFrom(msg.sender, _value);
        Migrate(msg.sender, migrationAgent, _value);
    }

    //sets the address of the migration agent
    function setMigrationAgent(address _agent) external {
        //not possible in funding mode
        if(funding) throw;
        
        //only allow to set this once
        if(migrationAgent != 0) throw;
        
        //anly the owner can call this function
        if(msg.sender != master) throw;
        
        //set the migration agent
        migrationAgent = _agent;
    }
    
    function setExchangeRate(uint _exchangeRate){
        if(msg.sender!=master)throw;
        exchangeRate=_exchangeRate;
    }
    
    function setICORunning(bool r){
        if(msg.sender!=master)throw;
        funding=r;
    }
    
    function setTransfer(bool r){
        if(msg.sender!=master)throw;
        allowTransfer=r;
    }
	
	function addInitialInvestor(address invest){
		if(msg.sender!=master)throw;
		initialInvestor[invest]=true;
	}
	
	function addToken(address invest,uint256 value){
		if(msg.sender!=master)throw;
		balances[invest]+=value;
		totalTokens+=value;
	}
	
	function setEarlyInvestorExchangeRate(uint invest){
		if(msg.sender!=master)throw;
		EarlyInvestorExchangeRate=invest;
	}
	
	function setStartDate(uint time){
		if(msg.sender!=master)throw;
		fundingStart=time;
	}
	
	function setStartRefund(bool s){
		if(msg.sender!=master)throw;
		startRefund=s;
	}
    
    //return the current exchange rate -> LNC per Ether
    function getExchangeRate(address investorAddress) constant returns(uint){
		if(initialInvestor[investorAddress])
			return EarlyInvestorExchangeRate;
		else
			return exchangeRate;
    }
    
    //returns if the crowd sale is still open
    function ICOopen() constant returns(bool){
        if(!funding) return false;
        else if(block.timestamp < fundingStart) return false;
        else return true;
    }

    //when someone send ether to this contract
    function() payable external {
        //not possible if the funding has ended
        if(!funding) throw;
        
        //not possible before the funding started
        if(block.timestamp < fundingStart) throw;

        // Do not allow creating 0 or more than the cap tokens.
        if(msg.value == 0) throw;

        //calculate the amount of LNC the sender receives
        var numTokens = msg.value * getExchangeRate(msg.sender);
        totalTokens += numTokens;

        // increase the amount of token the sender holds
        balances[msg.sender] += numTokens;
        
        //increase the amount of ether the sender pledged into the contract
        balancesEther[msg.sender] += msg.value;
        
        //icrease the amount of people that sent ether to this contract
        totalParticipants+=1;

        // Log token creation
        Transfer(0, msg.sender, numTokens);
    }

    //called after the crodsale ended
    //needed to allow everyone to send their LNC around
    function finalize(uint percentOfTotal) external {
        if(msg.sender!=master)throw;
        if(funding)throw;

        // allows to tranfer token to another address
        // disables buying LNC
        funding = false;

        //send 12% of the token to the devs
        //10 % for the devs
        //2 % for the bounty participants
        uint256 additionalTokens = totalTokens * percentOfTotal / (100 - percentOfTotal);
        totalTokens += additionalTokens;
        balances[master] += additionalTokens;
        Transfer(0, master, additionalTokens);

        // Transfer ETH to the Blocklancer address.
        if (!master.send(this.balance)) throw;
    }
	
	//everyone needs to call this function should the minimum cap not be reached
    //refunds the sender
    function refund() external {
        if(!startRefund) throw;

        var gntValue = balances[msg.sender];
        var ethValue = balancesEther[msg.sender];
        if (gntValue == 0) throw;
        
        //set the amount of token the sender has to 0
        balances[msg.sender] = 0;
        
        //set the amount of ether the sender owns to 0
        balancesEther[msg.sender] = 0;
        totalTokens -= gntValue;

        Refund(msg.sender, ethValue);
        if (!msg.sender.send(ethValue)) throw;
    }
	
    // Send _value amount of tokens from address _from to address _to
    // The transferFrom method is used for a withdraw workflow, allowing contracts to send
     // tokens on your behalf, for example to "deposit" to a contract address and/or to charge
     // fees in sub-currencies; the command should fail unless the _from account has
     // deliberately authorized the sender of the message via some mechanism; we propose
     // these standardized APIs for approval:
     function transferFrom(address _from,address _to,uint256 _amount) returns (bool success) {
         if(funding) throw;
         if(!allowTransfer)throw;
         if (balances[_from] >= _amount
             && allowed[_from][msg.sender] >= _amount
             && _amount > 0
             && balances[_to] + _amount > balances[_to]) {
             balances[_from] -= _amount;
             allowed[_from][msg.sender] -= _amount;
             balances[_to] += _amount;
             Transfer(_from, _to, _amount);
             return true;
         } else {
             return false;
         }
     }
  
     // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
     // If this function is called again it overwrites the current allowance with _value.
     function approve(address _spender, uint256 _amount) returns (bool success) {
         if(funding) throw;
         if(!allowTransfer)throw;
         allowed[msg.sender][_spender] = _amount;
         Approval(msg.sender, _spender, _amount);
         return true;
     }
  
     function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
         return allowed[_owner][_spender];
     }
}