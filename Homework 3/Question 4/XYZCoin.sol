pragma solidity ^0.5.1;

import "./ERC20.sol";

contract XYZCoin is ERC20{

    string public symbol = "XYZ";
    string public name = "XYZCoin";
    uint256 public totalSupply = 1000;
    uint8 public decimals = 0;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed tokenOwner, address indexed spender, uint256 value);

    mapping (address => uint256) public balances;
    mapping (address => mapping (address => uint256)) public allowed;

    constructor() public {
        balances[msg.sender] = totalSupply;
    }

    function totalSupply() public view returns (uint256)
    {
        return totalSupply;
    }
    function balanceOf(address tokenOwner) public view returns (uint256)
    {
        return balances[tokenOwner];
    }
    function allowance(address tokenOwner, address spender) public view returns (uint256)
    {
        return allowed[tokenOwner][spender];
    }
    function transfer(address to, uint256 value) public returns (bool)
    {
        require(value <= balances[msg.sender]);
        balances[msg.sender] = balances[msg.sender].sub(value);
        balances[to] = balances[to].add(value);
        emit Transfer(msg.sender, to, value);
        return true;
    }
    function approve(address spender, uint256 value) public returns (bool)
    {
        allowed[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
    function transferFrom(address from, address to, uint256 value) public returns (bool)
    {
        require(value <= balances[from]);
        require(value <= allowed[from][msg.sender]);
        balances[from] = balances[from].sub(value);
	    allowed[from][msg.sender] = allowed[from][msg.sender].sub(value);
        balances[to] = balances[to].add(value);
        emit Transfer(from, to, value);
        return true;
    }
}