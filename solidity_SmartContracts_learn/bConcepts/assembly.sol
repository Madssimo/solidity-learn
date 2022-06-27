pragma solidity >=0.8.1;

contract aprendeAssemmbly {

    function agregarEVM() external {
        uint x;
        uint y;
        
        assembly {
            let z := add(x,y)
        }
    }

    function agregarEVM2() public view returns (bool success) {
        uint size;
        address addr;

        assembly {
            size := extcodesize(addr)
        }

        if(size <= 0) {return true;
        }else{
            return false;
        }
    }

    function agregarEVM3() external view {
        bytes memory data = new bytes(10);
        bytes32 dataB32;
        assembly {
            dataB32 := mload(add(data,32))
        }

    }
}