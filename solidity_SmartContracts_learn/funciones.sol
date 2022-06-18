pragma solidity >= 0.8.1;

contract Funciones {

    constructor() public{

    }
    function sumaValores() public view returns(uint){
        uint a = 3;
        uint b = 5;
        uint result = a + b;
        return result;
    }
        

}