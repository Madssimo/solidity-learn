pragma solidity >= 0.8.1;

contract enums {

    enum tamanoPapas {GRANDE, MEDIANO, PEQUENO}
    tamanoPapas choice;
    tamanoPapas constant defaultChoice = tamanoPapas.GRANDE;

    function setSmall() public {
        choice = tamanoPapas.PEQUENO;
    }
    function getChoice() public view returns(tamanoPapas) {
        return choice;
    }
    function getDefaultChoice() public view returns (uint){
        return uint(defaultChoice);
    }
}