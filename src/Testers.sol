// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";

contract Testers {
    address public target;

    constructor(address _target) {
        target = _target;
    }

    function setValueWithCall(uint256 _value) external returns (address) {
        (bool sent, bytes memory data) = target.call(
            abi.encodeWithSignature("setValue(uint256)", _value)
        );
        require(sent, "could not set value");
        address sender = abi.decode(data, (address));
        return sender;
    }

    function getValueWithStaticCall() external view returns (uint) {
        (bool recieved, bytes memory data) = target.staticcall(
            abi.encodeWithSignature("getValue()")
        );
        require(recieved, "could not retrived data...");

        console.log("value recieved is %s", string(data));

        uint value_recieved = abi.decode(data, (uint));

        return value_recieved;
    }
}
