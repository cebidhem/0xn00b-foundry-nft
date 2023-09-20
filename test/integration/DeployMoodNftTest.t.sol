// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {MoodNft} from "../../src/MoodNft.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    MoodNft moodNft;

    function testDeployMoodNft() public {
        DeployMoodNft deploy = new DeployMoodNft();
        moodNft = deploy.run();
        console.log("MoodNft deployed at %s", address(moodNft));
        assertEq(address(moodNft), address(0x90193C961A926261B756D1E5bb255e67ff9498A1));
    }
}
