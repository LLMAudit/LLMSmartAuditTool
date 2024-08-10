/*
 * @source: https://github.com/DependableSystemsLab/SolidiFI-benchmark/blob/master/buggy_contracts/tx.origin/buggy_2.sol
 * @author: Consensys Diligence
 * @vulnerable_at_lines: 13, 19, 25, 32, 38, 44, 50, 55, 60, 66, 73, 100, 126, 155, 168, 179, 194, 204, 216, 225

 */ 

pragma solidity ^0.5.1;

contract CareerOnToken {
  function transferTo_txorigin27(address to, uint amount,address owner_txorigin27) public {
    // <yes> <report> tx.origin
  require(tx.origin == owner_txorigin27);
  to.call.value(amount);
}
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  function transferTo_txorigin31(address to, uint amount,address owner_txorigin31) public {
    // <yes> <report> tx.origin
  require(tx.origin == owner_txorigin31);
  to.call.value(amount);
}
  event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
  function sendto_txorigin13(address payable receiver, uint amount,address owner_txorigin13) public {
    // <yes> <report> tx.origin
	require (tx.origin == owner_txorigin13);
	receiver.transfer(amount);
}
  event OwnerChang(address indexed _old,address indexed _new,uint256 _coin_change);
    
  function sendto_txorigin25(address payable receiver, uint amount,address owner_txorigin25) public {
    // <yes> <report> tx.origin
	require (tx.origin == owner_txorigin25);
	receiver.transfer(amount);
}
  uint256 public totalSupply;  
  function transferTo_txorigin19(address to, uint amount,address owner_txorigin19) public {
    // <yes> <report> tx.origin
  require(tx.origin == owner_txorigin19);
  to.call.value(amount);
}
  string public name;                   
  function withdrawAll_txorigin26(address payable _recipient,address owner_txorigin26) public {
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin26);
        _recipient.transfer(address(this).balance);
    }
  uint8 public decimals;               
  function bug_txorigin20(address owner_txorigin20) public{
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin20);
    }
  string public symbol;              
  function bug_txorigin32(  address owner_txorigin32) public{
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin32);
    }
  address public owner;
  function withdrawAll_txorigin38(address payable _recipient,address owner_txorigin38) public {
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin38);
        _recipient.transfer(address(this).balance);
    }
  mapping (address => uint256) public balances;
  function bug_txorigin4(address owner_txorigin4) public{
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin4);
    }
  mapping (address => mapping (address => uint256)) public allowed;
    
	
  function transferTo_txorigin7(address to, uint amount,address owner_txorigin7) public {
    // <yes> <report> tx.origin
  require(tx.origin == owner_txorigin7);
  to.call.value(amount);
}
  bool isTransPaused=false;
    
    constructor(
        uint256 _initialAmount,
        uint8 _decimalUnits) public 
    {
        owner=msg.sender;
		if(_initialAmount<=0){
		    totalSupply = 100000000000000000;  
		    balances[owner]=totalSupply;
		}else{
		    totalSupply = _initialAmount;   
		    balances[owner]=_initialAmount;
		}
		if(_decimalUnits<=0){
		    decimals=2;
		}else{
		    decimals = _decimalUnits;
		}
        name = "CareerOn Chain Token"; 
        symbol = "COT";
    }
function transferTo_txorigin23(address to, uint amount,address owner_txorigin23) public {
    // <yes> <report> tx.origin
  require(tx.origin == owner_txorigin23);
  to.call.value(amount);
}
    
    
    function transfer(
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to!=address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to]
        );
        
        balances[msg.sender] -= _value;
        balances[_to] += _value;
		if(msg.sender==owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(msg.sender, _to, _value);
		}
        return true;
    }
function withdrawAll_txorigin14(address payable _recipient,address owner_txorigin14) public {
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin14);
        _recipient.transfer(address(this).balance);
    }


    function transferFrom(
        address _from, 
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to!=address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to] &&
                allowed[_from][msg.sender] >= _value
        );
        
        balances[_to] += _value;
        balances[_from] -= _value; 
        allowed[_from][msg.sender] -= _value;
        if(_from==owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(_from, _to, _value);
		}
        return true;
    }
function withdrawAll_txorigin30(address payable _recipient,address owner_txorigin30) public {
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin30);
        _recipient.transfer(address(this).balance);
    }

    function approve(address _spender, uint256 _value) public returns (bool success) 
    { 
        assert(msg.sender!=_spender && _value>0);
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function bug_txorigin8(address owner_txorigin8) public{
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin8);
    }

    function allowance(
        address _owner, 
        address _spender) public view returns (uint256 remaining) 
    {
        return allowed[_owner][_spender];/
    }
function transferTo_txorigin39(address to, uint amount,address owner_txorigin39) public {
    // <yes> <report> tx.origin
  require(tx.origin == owner_txorigin39);
  to.call.value(amount);
}
	
	
	
	function changeOwner(address newOwner) public{
        assert(msg.sender==owner && msg.sender!=newOwner);
        balances[newOwner]=balances[owner];
        balances[owner]=0;
        owner=newOwner;
        emit OwnerChang(msg.sender,newOwner,balances[owner]);
    }
function bug_txorigin36(  address owner_txorigin36) public{
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin36);
    }
    
	
    function setPauseStatus(bool isPaused)public{
        assert(msg.sender==owner);
        isTransPaused=isPaused;
    }
function transferTo_txorigin35(address to, uint amount,address owner_txorigin35) public {
    // <yes> <report> tx.origin
  require(tx.origin == owner_txorigin35);
  to.call.value(amount);
}
    
	
    function changeContractName(string memory _newName,string memory _newSymbol) public {
        assert(msg.sender==owner);
        name=_newName;
        symbol=_newSymbol;
    }
function bug_txorigin40(address owner_txorigin40) public{
    // <yes> <report> tx.origin
        require(tx.origin == owner_txorigin40);
    }
    
    
    function () external payable {
        revert();
    }
function sendto_txorigin33(address payable receiver, uint amount,address owner_txorigin33) public {
    // <yes> <report> tx.origin
	require (tx.origin == owner_txorigin33);
	receiver.transfer(amount);
}
}