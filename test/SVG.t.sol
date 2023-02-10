// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/SVG.sol";

contract EmptyTest is Test {
    SVGDelegate svgContract = new SVGDelegate();

    function setUp() public {}

    function testOutput() public {
        string memory returnedUri = svgContract.tokenUri(1);
        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "./open.js";
        inputs[2] = returnedUri;
        bytes memory res = vm.ffi(inputs);
        // vm.ffi(inputs);
    }
}
