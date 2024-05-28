// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

contract MyToken is ERC20, ERC20Permit, Ownable {
    constructor(address initialOwner)
        ERC20("MyToken", "MTK")
        ERC20Permit("MyToken")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 1 * 10 ** decimals());
    }
}
