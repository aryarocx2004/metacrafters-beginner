// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Arya {


string public tokenname = "ARYA";
string public tokenAbbriv = "ARY";
uint public totalSupply = 0;


mapping(address => uint) public _balance_;


function mint (address addrr_, uint val_) public {
    totalSupply += val_;
    _balance_[addrr_] += val_;
}


function burn (address addrr_, uint val_) public {
    if(_balance_[addrr_] >= val_){
        totalSupply -= val_;
        _balance_[addrr_] -= val_;
    }
    
}
}
