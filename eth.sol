@@ -0,0 +1,30 @@

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public TokenName = "BigCoin";
    string public TokenAbbrv = "BGC";
    uint public TotalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balance;

    // mint function
    function mint(address _address, uint _value) public{
       TotalSupply += _value;
       balance[_address] += _value;

    } 

    // burn function
    function burn (address _address, uint _value) public{
       if(balance[_address]>=_value){
        TotalSupply -=_value;
        balance[_address]-=_value;  
       }
    }

}
