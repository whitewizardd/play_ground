// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract Test {
    uint256 private value;
    address public owner;

    address private allowedOperator;

    constructor() {
        owner = address(msg.sender);
    }
    // modifier()

    function setValue(uint256 _value) external returns (address) {
        value = _value;
        return msg.sender;
    }

    function getValue() external view returns (uint) {
        return value;
    }
}
