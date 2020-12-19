pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie { // Zombie
        string name;
        uint dna;
    }

    Zombie[] public zombies; // Array of Zombies

    function _createZombie(string memory _name, uint _dna) private {

        // Create new zombie
        zombies.push(Zombie(_name, _dna));

    }
}

