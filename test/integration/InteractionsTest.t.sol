// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {BasicNft} from "../../src/BasicNft.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";
import {MintBasicNft} from "../../script/Interactions.s.sol";

contract InteractionsTest is Test {
    BasicNft basicNft;

    string constant PUG_URI = "ipfs://bafybeicjndupkyakmfbpcgkecykegmjph4nyvu5is5r4fvigkse57u2hna/?filename=0-PUG.json";

    function setUp() external {
        DeployBasicNft deploy = new DeployBasicNft();
        basicNft = deploy.run();
    }

    function testUserCanMintInteractions() public {
        MintBasicNft mintBasicNft = new MintBasicNft();
        mintBasicNft.mintNftOnContract(address(basicNft));

        assertEq(basicNft.tokenURI(0), PUG_URI);
    }
}
