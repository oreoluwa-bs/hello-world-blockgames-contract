// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 < 0.9.0;


contract HelloWorld {
    //  State variables
    uint256 totalHellos;
    string private name;

    struct Hello{
        address greeter;
        string message;
    }

    Hello[] greeters;

    // Constructor
    constructor(string memory _name){
        name= _name;
    }

    // Functions
    function sayHello(string memory _hello) public {
        totalHellos += 1;

        greeters.push(Hello(msg.sender,_hello));
    }

    function getTotalHellos() public view returns (uint256) {
        return totalHellos;
    }
}