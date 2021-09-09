pragma solidity ^0.5.1;

//API Interface of the Token

Interface ERC20Interface {
    //Interface cannot host any variables
    function totalSupply() public view returns (uint256);
    function balanceOf(address tokenOwner) public view returns (uint256;
    function allowance(address tokenOwner, address spender) public view returns (uint256);
    function transfer(address to, uint256 value) public returns (bool);
    function approve(address spender, uint256 value) public returns (bool);
    function transferFrom(address from, address to, uint256 value) public returns (bool;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed tokenOwner, address indexed spender, uint256 value);
}