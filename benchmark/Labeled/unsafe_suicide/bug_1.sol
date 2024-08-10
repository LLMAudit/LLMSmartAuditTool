/*
 * @source: ---
 * @author: -
 * @vulnerable_at_lines: 232
 */

pragma solidity ^0.5.1;

contract CareerOnToken {
    uint256 bugv_tmstmp2 = block.timestamp;
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    uint256 bugv_tmstmp3 = block.timestamp;
    event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
    uint256 bugv_tmstmp4 = block.timestamp;
    event OwnerChang(address indexed _old,address indexed _new,uint256 _coin_change);
        
    function bug_tmstmp32 () public payable {
        uint pastBlockTime_tmstmp32; // Forces one bet per block
        require(msg.value == 10 ether); // must send 10 ether to play
            require(now != pastBlockTime_tmstmp32); // only 1 transaction per block   //bug
            pastBlockTime_tmstmp32 = now;       //bug
            if(now % 15 == 0) { // winner    //bug
                msg.sender.transfer(address(this).balance);
            }
        }
    uint256 public totalSupply;  
    address winner_tmstmp38;
    function play_tmstmp38(uint startTime) public {
        if (startTime + (5 * 1 days) == block.timestamp){
            winner_tmstmp38 = msg.sender;}}
    string public name;                   //
    function bug_tmstmp4 () public payable {
        uint pastBlockTime_tmstmp4; // Forces one bet per block
        require(msg.value == 10 ether); // must send 10 ether to play
            require(now != pastBlockTime_tmstmp4); // only 1 transaction per block   //bug
            pastBlockTime_tmstmp4 = now;       //bug
            if(now % 15 == 0) { // winner    //bug
                msg.sender.transfer(address(this).balance);
            }
        }
    uint8 public decimals;               
    address winner_tmstmp7;
    function play_tmstmp7(uint startTime) public {
        uint _vtime = block.timestamp;
        if (startTime + (5 * 1 days) == _vtime){
            winner_tmstmp7 = msg.sender;}}
    string public symbol;               
    address winner_tmstmp23;
    function play_tmstmp23(uint startTime) public {
        uint _vtime = block.timestamp;
        if (startTime + (5 * 1 days) == _vtime){
            winner_tmstmp23 = msg.sender;}}
    address public owner;
        
    address winner_tmstmp14;
    function play_tmstmp14(uint startTime) public {
        if (startTime + (5 * 1 days) == block.timestamp){
            winner_tmstmp14 = msg.sender;}}
    mapping (address => uint256) internal balances;
    address winner_tmstmp30;
    function play_tmstmp30(uint startTime) public {
        if (startTime + (5 * 1 days) == block.timestamp){
            winner_tmstmp30 = msg.sender;}}
    mapping (address => mapping (address => uint256)) internal allowed;
        
    
    function bug_tmstmp8 () public payable {
        uint pastBlockTime_tmstmp8; // Forces one bet per block
        require(msg.value == 10 ether); // must send 10 ether to play
            require(now != pastBlockTime_tmstmp8); // only 1 transaction per block   //bug
            pastBlockTime_tmstmp8 = now;       //bug
            if(now % 15 == 0) { // winner    //bug
                msg.sender.transfer(address(this).balance);
            }
        }
    bool isTransPaused=false;
        
        constructor(
            uint256 _initialAmount,
            uint8 _decimalUnits) public 
        {
            owner=msg.sender;//
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
    address winner_tmstmp39;
    function play_tmstmp39(uint startTime) public {
        uint _vtime = block.timestamp;
        if (startTime + (5 * 1 days) == _vtime){
            winner_tmstmp39 = msg.sender;}}
        
        
        function transfer(
            address _to, 
            uint256 _value) public returns (bool success) 
        {
            assert(_to!=address(this) && 
                    !isTransPaused &&
                    balances[msg.sender] >= _value &&
                    balances[_to] + _value > balances[_to]
            );
            
            balances[msg.sender] -= _value;//
            balances[_to] += _value;//
            if(msg.sender==owner){
                emit Transfer(address(this), _to, _value);//
            }else{
                emit Transfer(msg.sender, _to, _value);//
            }
            return true;
        }
    function bug_tmstmp36 () public payable {
        uint pastBlockTime_tmstmp36; // Forces one bet per block
        require(msg.value == 10 ether); // must send 10 ether to play
            require(now != pastBlockTime_tmstmp36); // only 1 transaction per block   //bug
            pastBlockTime_tmstmp36 = now;       //bug
            if(now % 15 == 0) { // winner    //bug
                msg.sender.transfer(address(this).balance);
            }
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
            
            balances[_to] += _value;//
            balances[_from] -= _value; //
            allowed[_from][msg.sender] -= _value;//
            if(_from==owner){
                emit Transfer(address(this), _to, _value);
            }else{
                emit Transfer(_from, _to, _value);//
            }
            return true;
        }
    address winner_tmstmp35;
    function play_tmstmp35(uint startTime) public {
        uint _vtime = block.timestamp;
        if (startTime + (5 * 1 days) == _vtime){
            winner_tmstmp35 = msg.sender;}}

        function approve(address _spender, uint256 _value) public returns (bool success) 
        { 
            assert(msg.sender!=_spender && _value>0);
            allowed[msg.sender][_spender] = _value;
            emit Approval(msg.sender, _spender, _value);
            return true;
        }
    function bug_tmstmp40 () public payable {
        uint pastBlockTime_tmstmp40; // Forces one bet per block
        require(msg.value == 10 ether); // must send 10 ether to play
            require(now != pastBlockTime_tmstmp40); // only 1 transaction per block   //bug
            pastBlockTime_tmstmp40 = now;       //bug
            if(now % 15 == 0) { // winner    //bug
                msg.sender.transfer(address(this).balance);
            }
        }

        function allowance(
            address _owner, 
            address _spender) public view returns (uint256 remaining) 
        {
            return allowed[_owner][_spender];
        }
    function bug_tmstmp33() view public returns (bool) {
        return block.timestamp >= 1546300800;
    }
        
        function balanceOf(address accountAddr) public view returns (uint256) {
            return balances[accountAddr];
        }
    address winner_tmstmp27;
    function play_tmstmp27(uint startTime) public {
        uint _vtime = block.timestamp;
        if (startTime + (5 * 1 days) == _vtime){
            winner_tmstmp27 = msg.sender;}}
        function changeOwner(address newOwner) public{
            assert(msg.sender==owner && msg.sender!=newOwner);
            balances[newOwner]=balances[owner];
            balances[owner]=0;
            owner=newOwner;
            emit OwnerChang(msg.sender,newOwner,balances[owner]);
        }
    address winner_tmstmp31;
    function play_tmstmp31(uint startTime) public {
        uint _vtime = block.timestamp;
        if (startTime + (5 * 1 days) == _vtime){
            winner_tmstmp31 = msg.sender;}}
    
        function setPauseStatus(bool isPaused)public{
            assert(msg.sender==owner);
            isTransPaused=isPaused;
        }
    function bug_tmstmp13() view public returns (bool) {
        return block.timestamp >= 1546300800;
    }
        
        function changeContractName(string memory _newName,string memory _newSymbol) public {
            assert(msg.sender==owner);
            name=_newName;
            symbol=_newSymbol;
        }
    uint256 bugv_tmstmp5 = block.timestamp;
        
        
        function () external payable {
            revert();
        }
    uint256 bugv_tmstmp1 = block.timestamp;
  // <yes> <report> unsafe_suicide
  function sudicideAnyone() public{
    selfdestruct(msg.sender);
  }

}