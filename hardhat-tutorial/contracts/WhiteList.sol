// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract WhiteList {
    uint8 public maxWhiteListAddresses;

    mapping(address => bool) public whiteListedAddresses;

    uint8 public numWhiteListedAddresses;

    constructor(uint8 _maxWhiteListAddresses) {
        maxWhiteListAddresses = _maxWhiteListAddresses;
    }

    function addAddressToWhiteList() public {
        require(
            !whiteListedAddresses[msg.sender],
            "Adress have already been whiteListed!"
        );
        require(
            numWhiteListedAddresses < maxWhiteListAddresses,
            "More addreses cannot be added . Limit Reached !!!"
        );

        whiteListedAddresses[msg.sender] = true;
        numWhiteListedAddresses += 1;
    }
}
