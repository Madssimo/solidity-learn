pragma solidity >= 0.8.1;

contract Matrices{
    uint [] public miMatriz;
    uint [] public miMatriz2;
    uint [200] public miMatrizFija;

    function push (uint number) public {
        miMatriz.push(number);
    }

     function  pop () public {
        miMatriz.pop();
    }

     function  getLength () public view returns(uint) {
       return miMatriz.length;
    }

    uint [] public cambiarMatriz;
    function removerElemento(uint i) public {
        cambiarMatriz[i] = cambiarMatriz[cambiarMatriz.length - 1];
        cambiarMatriz.pop();
    }

    function test() public {
        cambiarMatriz.push(1);
        cambiarMatriz.push(2);
        cambiarMatriz.push(3);
        cambiarMatriz.push(4);
        cambiarMatriz.push(5);
    }

    function getaArray() public view returns (uint) {
        return cambiarMatriz.length;
    }
}