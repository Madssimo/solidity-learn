pragma solidity >= 0.8.1;

contract FunctionOverloading {
    /*function x(uint lightSwitch, uint wallet) public {

    }
    function x(uint wallet) public {

    }*/

    function getSum(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function getSu(uint a, uint b, uint c) public pure returns(uint) {
        return a+b+c;
    }
} 