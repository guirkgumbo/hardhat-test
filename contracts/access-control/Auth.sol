pragma solidity ^0.8.0;

contract Auth {
    address private _administrator;

    constructor(address deployer) {
        // make the deployer of the contract
        _administrator = deployer;
    }

    function isAdminstrator(address user) public view returns (bool) {
        return user == _administrator;
    }
}