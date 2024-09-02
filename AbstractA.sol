// SPDX-License-Identifier: EPL-2.0

pragma solidity ^0.8.0;
import "./AbstractB.sol";

contract AbstractA is AbstractB {
    function fn() public pure override returns (bytes32) { return "fn text"; }
}
