// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    constructor() Ownable(msg.sender) {}

    uint256 private s_number;

    event ValueChanged(uint256 number);

    function NumberChanges(uint256 _number) public onlyOwner {
        s_number = _number;
        emit ValueChanged(_number);
    }

    function getNumber() public view returns (uint256) {
        return s_number;
    }
}
