pragma solidity >= 0.8.1;

contract Cadenas{
    string nombre = 'Gian';
    string apellido = 'Araujo';

    function hola() public view returns(string memory){
        return nombre;
    }
    function obtenerCaracteres() public view returns(uint){
        //return nombre.length
        //convertir cadena en bytes, asi podemos retornar la longitud

        bytes memory stringToBytes = bytes(nombre);
        return stringToBytes.length;
    }
}