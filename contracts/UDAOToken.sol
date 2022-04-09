// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UDAOToken is ERC20 {
    constructor() ERC20("UDAOToken", "UDAO") {
        _mint(msg.sender, 100000);
    }
}