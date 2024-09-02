// SPDX-License-Identifier: EPL-2.0

pragma solidity ^0.8.26;

contract NewB {

    uint public i;

    function init() public {
        i = 999;
    }

    function revertFn() public pure {
        revert();
    }

    function bumpI() public returns (uint) {
        i++;
        return i;
    }
}
