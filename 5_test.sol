// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Paramio is ERC20 {
  address public owner;

  constructor(uint256 initialSupply) ERC20("RhuzzCoin", "RC") {
    _mint(msg.sender, initialSupply);
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Only the owner can call this function");
    _;
  }

  function mint(uint256 value) external onlyOwner {
    _mint(msg.sender, value);
  }

  function burn(uint256 value) external {
    _burn(msg.sender, value);
  }

  function transfer(address to, uint256 value) public override returns (bool) {
    require(balanceOf(msg.sender) >= value, "Insufficient balance");
    _transfer(msg.sender, to, value);
    return true;
  }
}