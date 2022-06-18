pragma solidity >=0.8.1;

contract Ciclos {
    // for
    uint [] data = [1,2,3,4,5];

    function forFunc(uint numero) public view returns(bool){
        bool numeroExiste = false;
        for(uint i = 0;i <data.length ;i++){
            if (data[i] == numero){
                numeroExiste = true;
            }
        }
        return numeroExiste;
    }

}