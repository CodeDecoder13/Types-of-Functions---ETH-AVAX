# Project: Create and Mint Token

# Paramio Token (RhuzzCoin)

## Overview

Paramio Token (RhuzzCoin) is an ERC20-compliant token smart contract written in Solidity. The contract extends the OpenZeppelin ERC20 contract, providing functionalities for creating, burning, and transferring tokens. Additionally, it includes a modifier (`onlyOwner`) to restrict certain functions to the contract owner.

## License

This contract is released under the MIT License. 

## Contract Details

### Functions

#### `constructor(uint256 initialSupply)`

- Initializes the contract with a specified initial token supply.
- Parameters:
  - `initialSupply` (uint256): The initial supply of Bucsit tokens.
- Modifiers:
  - None

#### `onlyOwner()`

- Modifier that restricts access to certain functions to the contract owner.

#### `mint(address to, uint256 value)`

- Function allowing the owner to mint (create) new Paramio tokens and assign them to a specific address.
- Parameters:
  - `to` (address): The address to which the new tokens will be assigned.
  - `value` (uint256): The amount of tokens to mint.
- Modifiers:
  - `onlyOwner`: Ensures that only the owner of the contract can call this function.

#### `burn(uint256 value)`

- Function allowing any user to burn (destroy) a specific amount of Paramio tokens.
- Parameters:
  - `value` (uint256): The amount of tokens to burn.
- Modifiers:
  - None

#### `transfer(address to, uint256 value)`

- Overrides the standard `transfer` function to add flexibility and custom functionality.
- Parameters:
  - `to` (address): The address to which the tokens will be transferred.
  - `value` (uint256): The amount of tokens to transfer.
- Returns:
  - `success` (bool): Indicates whether the transfer was successful.
- Modifiers:
  - None
 
