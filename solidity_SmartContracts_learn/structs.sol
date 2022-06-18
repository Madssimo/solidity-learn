pragma solidity >= 0.8.1;

contract structs {
    struct Libros {
        string titulo;
        string tema;
        uint id_libro;
        string autor;
    }

    Libros libro;

    function setBook() public {
        libro = Libros('Curso solidity por Gian', 'Solidity',1, 'Gian');
    }

    function getBookID() public view returns (uint) {
        return libro.id_libro;
    }

    function getBookAutor() public view returns (string memory) {
        return libro.autor;
    }
    
    
}