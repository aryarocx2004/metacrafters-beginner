// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Arya {


string public tokenname = "ARYA";
string public tokenAbbriv = "ARY";
uint public totalSupply = 0;


mapping(address => uint) public balance;


function mint (address addrr_, uint val_) public {
    totalSupply += val_;
    balance[addrr_] += val_;
}


function burn (address addrr_, uint val_) public {
    if(balance[addrr_] >= val_){
        totalSupply -= val_;
        balance[addrr_] -= val_;
    }
    
}
}
