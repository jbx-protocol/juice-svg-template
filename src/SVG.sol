// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Base64} from "base64/base64.sol";

contract SVGDelegate {
    function tokenUri(uint256 tokenId) external view returns (string memory) {
        uint256 id = tokenId; // do something with me
        string[] memory parts = new string[](4);
        parts[0] = string('data:application/json;base64,');
        parts[1] = string(
            abi.encodePacked(
                '{"name":"XYZ",',
                 '"description":"Description Text",',
                 '"image":"data:image/svg+xml;base64,'
            )
        );
        parts[2] = Base64.encode(
            abi.encodePacked(
                '<svg width="1000" height="1000" viewBox="0 0 1000 1000" xmlns="http://www.w3.org/2000/svg">',
                '<circle cx="50" cy="50" r="50" />',
                '</svg>'
            )
        );
        parts[3] = string('"}');
        string memory uri = string.concat(
            parts[0],
            Base64.encode(abi.encodePacked(parts[1], parts[2],parts[3]))
        );
        return uri;
    }
}
