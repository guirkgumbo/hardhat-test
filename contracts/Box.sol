//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private _value;

    // Emitted when the stored value changes
    event ValueChanged(uint256 value);

    // The onlyOwner modifier restricts who can call the store function
    function store(uint256 value) public onlyOwner {        
        _value = value;
        emit ValueChanged(value);
    }

    // Reads the last stored value 
    function retrieve() public view returns (uint256) {
        return _value;
    }
}
