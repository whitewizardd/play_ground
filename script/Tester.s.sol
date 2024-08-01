// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;
import {Script, console} from "forge-std/Script.sol";
import {Test} from "../src/Tester.sol";

contract TesterScript is Script {
    function setUp() external {}

    function run() external view returns (uint) {
        //     vm.startBroadcast();
        //     Test test = new Test();
        //     console.log(address(test));
        //     vm.stopBroadcast();
        //     return address(test);

        Test test = Test(0x2d0c48cB87A5d2245f0f7D134f438e6196A621fa);
        uint result = test.getValue();
        console.log("result found is ::: ", result);
        return result;
    }

    // function runGetResult() external view returns (uint) {
    //     Test test = Test(0x2d0c48cB87A5d2245f0f7D134f438e6196A621fa);
    //     uint result = test.getValue();
    //     console.log("result found is ::: ", result);
    //     return result;
    // }
}
