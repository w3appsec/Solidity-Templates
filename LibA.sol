// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "./LibB.sol";

contract LibA {
    function testSquareRoot(uint256 x) public pure returns (uint256) {
        return Math.sqrt(x);
    }
}
