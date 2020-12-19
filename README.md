## Solidity Notes
Notes white going through the [CryptoZombies](https://cryptozombies.io) tutorials

# State Variables
    Written to blockchain permanently
        - uint (uint8, uint16, uint32, etc.. ) = unsigned integer (Non-Negative Number)
        - int = signed integer

# Math Operations:
    Addition:
        x + y
    Subtraction:
        x - y
    Multiplication:
        x * y
    Division:
        x / y
    Modulus / Remainder:
        x % y (for example: 13 % 5 is 3, because if you divide 5 into 13, ~3 is the remainder))
    Exponential Operator (i.e. "x to the power of y", x^y):
        uint x = 5 ** 2; (equal to 5^2 = 25)

# Structure:
    Used for complex data with multiple properties

# Arrays:
    Collection of something (fixed and dynamic arrays)
        // Array with a fixed length of 2 elements:
        uint[2] fixedArray;
        // another fixed Array, can contain 5 strings:
        string[5] stringArray;
        // a dynamic Array - has no fixed size, can keep growing:
        uint[] dynamic array

# Function Declorations