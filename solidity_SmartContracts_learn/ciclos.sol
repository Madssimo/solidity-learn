pragma solidity >=0.8.1;

contract Ciclos {
    // for
    uint [] data = [1,2,3,4,5];
    uint []nPares = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40];

    function forFunc(uint numero) public view returns(bool){
        bool numeroExiste = false;
        for(uint i = 0;i <data.length ;i++){
            if (data[i] == numero){
                numeroExiste = true;
            }
        }
        return numeroExiste;
    }

    function numerosPares() public view returns(uint){
        uint count = 0;
        for (uint i=0;i<nPares.length; i++){
            if (nPares[i]%2==0){
                count++;
            }
        }
        return count;
    }

}