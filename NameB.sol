// SPDX-License-Identifier: EPL-2.0

pragma solidity ^0.8.26;

contract NameB {

    uint public i;

    constructor() {
        i = 1000;
    }

    function fn() public returns (uint) {
        i++;
        return i;
    }
}
