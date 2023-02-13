// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/SVG.sol";

contract EmptyTest is Test {
    SVGDelegate svgContract = new SVGDelegate();

    function setUp() public {}

    function testOutput() public {
        string memory returnedUri = svgContract.tokenUri(1);

        // The following lines open the SVG in your default SVG reader. This part of the code depends upon `ffi`. Note: `ffi` is not safe in repos where untrusted parties can mutate the code (incl PRs). If a malicious party introduces code and the dev runs it using `ffi`, it is executed by node and has full disk access. In sum: if you're working on a shared codebase that others can push to, or are running tests on a PR by an untrusted party, consider removing the `ffi` code below.
        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "./open.js";
        inputs[2] = returnedUri;
        // bytes memory res = vm.ffi(inputs); // Complains that res is not used
        vm.ffi(inputs);
    }
}