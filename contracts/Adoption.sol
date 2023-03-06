pragma solidity ^0.5.0;

contract Adoption {
address[16] public adopters;
    // Adottare un alveare
    function adopt(uint alveareId) public returns (uint) {
        require(alveareId >= 0 && alveareId <= 15);

        adopters[alveareId] = msg.sender;

        return alveareId;
    }
    // Recupero dell'alveare adottato
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }

}
