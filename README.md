## Solidity Notes
Notes white going through the [CryptoZombies](https://cryptozombies.io) tutorials

** Note **
Think of contracts as classes. All the below are within the contract (or class)


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

Function Example:

```solidity
function eatHamburgers(string memory _name, uint _amount) public {

}
```
[function] - declares function
[eatHamburgers] - function name
[memory] - Where the variable data is stored
[public] - the visibility of the functions

Ways to pass an argument:

By value, which means that the Solidity compiler creates a new copy of the parameter's value and passes it to your function. This allows your function to modify the value without worrying that the value of the initial parameter gets changed.

By reference, which means that your function is called with a... reference to the original variable. Thus, if your function changes the value of the variable it receives, the value of the original variable gets changed.

** By convention, local variables start with an underscore (ie: _name) to differentiate between global variables.

Calling the function:

```solidity
eatHamburgers("vitalik", 100);
```