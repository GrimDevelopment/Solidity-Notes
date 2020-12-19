# Solidity Notes
Notes white going through the [CryptoZombies](https://cryptozombies.io) tutorials

** Note **
Think of contracts as classes. All the below are within the contract (or class)


## State Variables
    uint (uint8, uint16, uint32, etc.. ) = unsigned integer (Non-Negative Number)
    int = signed integer

## Math Operations
    // Addition
        x + y
    // Subtraction
        x - y
    // Multiplication
        x * y
    // Division
        x / y
    // Modulus / Remainder
        x % y (for example: 13 % 5 is 3, because if you divide 5 into 13, ~3 is the remainder))
    // Exponential Operator (i.e. "x to the power of y", x^y):
        uint x = 5 ** 2; (equal to 5^2 = 25)

## Structure
Used for complex data with multiple properties

    struct Zombie {
        string name;
        uint dna;
    }

## Arrays
Collection of something (fixed and dynamic arrays)

    // Array with a fixed length of 2 elements:
    uint[2] fixedArray;
    
    // another fixed Array, can contain 5 strings:
    string[5] stringArray;
    
    // a dynamic Array - has no fixed size, can keep growing:
    uint[] dynamic array

## Function Declorations

** By convention, local variables start with an underscore (ie: _name) to differentiate between global variables.


Function Example:

    function eatHamburgers(string memory _name, uint _amount) public {

    }

    // function - declares function
    // eatHamburgers - function name
    // memory - Where the variable data is stored
    // public - the visibility of the functions

Calling the function:

    eatHamburgers("vitalik", 100);

Ways to pass an argument:

By value, which means that the Solidity compiler creates a new copy of the parameter's value and passes it to your function. This allows your function to modify the value without worrying that the value of the initial parameter gets changed.

By reference, which means that your function is called with a... reference to the original variable. Thus, if your function changes the value of the variable it receives, the value of the original variable gets changed.

## Working with Structs and Arrays

Creating and pushing zombie to the array in one line

    zombies.push(Zombie(_name, _dna));

## Types of functions Functions
Solidity functions are PUBLIC by default. This means that anyone can call the function and execute its code.

With that in mind, it is good practice to make your functions PRIVATE by default and PUBLIC only when desired.

### Private Functions
    // Private Function

    uint[] numbers;

    function _addToArray(uint number) private {
        numbers.push(_number);
    }

### Public Functions
    // Public Function

    uint[] numbers;

    function _addToArray(uint number) public {
        numbers.push(_number);
    }
### Returning values from functions
    string greeting = "What's up dog";

    function sayHello() public returns (string memory) {
    return greeting;
    }

### View Functions
Since the above only returns values (rather than modifying values), the function is called a "View" function.

Declaring a view function:


    function sayHello() public view returns (string memory) {
        
    }

### Pure Functions
Pure functions are functions that only return values values without reading from the state of the app

Declaring a pure function


    function _multiply(uint a, uint b) private pure returns (uint) {
    return a * b;
    }

## Keccak256
Keccak256 (A version of SHA3) is a built in hash function to generate random 256 bit hexadecimal numbers.

Small changes in input will generate a large change in the hash

keccak256 expects a single parameter of type **byte**


    keccak256(abi.encodePacked("aaaab"));
    // 6e91ec6b618bb462a4a6ee5aa2cb0e9cf30f7a052bb467b0ba58b8748c00d2e5
    
    keccak256(abi.encodePacked("aaaac"));
    //b1f078126895a1424524de5321b339ab00408010b7cf0e6ed451514981e58aa9

## Typecasting
Converting data between the various data types

    uint8 a = 5;
    uint b = 6;

    // throws an error because a * b returns a uint, not uint8:
    uint8 c = a * b;

    // we have to typecast b as a uint8 to make it work:
    uint8 c = a * uint8(b);

# Events

Events are a way for your contract to communicate that something happened on the blockchain to your app front-end, which can be 'listening' for certain events and take action when they happen.

    // declare the event
    event IntegersAdded(uint x, uint y, uint result);

    function add(uint _x, uint _y) public returns (uint) {
        uint result = _x + _y;
        
        // fire an event to let the app know the function was called:
        emit IntegersAdded(_x, _y, result);
        
        return result;
    }

Your app front-end could then listen for the event. A javascript implementation would look something like:

    YourContract.IntegersAdded(function(error, result) {
    // do something with result
    })

We want an event to let our front-end know every time a new zombie was created, so the app can display it.

- Declare an event called NewZombie. It should pass zombieId (a uint), name (a string), and dna (a uint).

- Modify the _createZombie function to fire the NewZombie event after adding the new Zombie to our zombies array.

- You're going to need the zombie's id. array.push() returns a uint of the new length of the array - and since the first item in an array has index 0, array.push() - 1 will be the index of the zombie we just added. Store the result of zombies.push() - 1 in a uint called id, so you can use this in the NewZombie event in the next line.

