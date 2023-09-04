# Solidity Beginner - Creating And Burning of Token

This Solidity program is a simple program that demonstrates the basic functionality of the Solidity programming language. This program demonstrates the basic implementation of burn and mint functions for burning and minting tokens named Arya(ARY) respectively.

## Description

This program is a simple contract written in Solidity. The contract has 2 functions - mint and burn which are used for minting and burning tokens respectively. The tokenName is "Arya" and its abbrevation is "ARY". The Mint and Burn functions allows us to mint and burn these tokens. This smart contract also shows us the basic implementation of the said function. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., arya.sol). Copy and paste the following code into the file:

```

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Arya {
//variabke declaration
string public tokenname = "ARYA";
string public tokenAbbriv = "ARY";
uint public totalSupply = 0;

//here we r mapping the address to uint and naming it as balances and declaring it to public
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile arya.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Arya" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the various functions. Calling the tokenName, tokenAbbriv and totalsupply function gives the name of the token, its abbrevation and the initial totalsupply repctively, in this case, Arya, ARY and 0. We can mint tokens by calling the mint function and providing the address and the number of tokens to be minted. Similarly, in the burn function, we can burn tokens. We can check the balance of the account by calling the Balanceof function.

## Authors

Arya 

aryapg2004@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
