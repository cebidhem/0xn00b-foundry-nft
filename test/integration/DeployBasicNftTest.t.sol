// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {BasicNft} from "../../src/BasicNft.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";

contract DeployBasicNftTest is Test {
    BasicNft basicNft;

    function testDeployBasicNft() public {
        DeployBasicNft deploy = new DeployBasicNft();
        basicNft = deploy.run();
        console.log("BasicNft deployed at %s", address(basicNft));
        assertEq(address(basicNft), address(0x90193C961A926261B756D1E5bb255e67ff9498A1));
    }
}
