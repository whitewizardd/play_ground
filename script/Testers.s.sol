// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {Testers} from "../src/Testers.sol";

contract TestersScript is Script {
    address constant test_address =
        address(0x2d0c48cB87A5d2245f0f7D134f438e6196A621fa);
    function setUp() external {}

    function run() external view returns (uint) {
        // vm.startBroadcast();
        // Testers testers = new Testers(test_address);

        // address interactor = testers.setValueWithCall(20);

        // console.log("interactor addresss is ", interactor);

        Testers testers = Testers(0x451bFf2284F765Ed5A45C46981323f7C016857f1);
        uint result = testers.getValueWithStaticCall();
        console.log("update found is ::: ", result);
        return result;
    }

    // function getTestersResult() external view returns (uint) {
    //     Testers testers = Testers(0x451bFf2284F765Ed5A45C46981323f7C016857f1);
    //     uint result = testers.getValueWithStaticCall();
    //     console.log("update found is ::: ", result);
    //     return result;
    // }
}
