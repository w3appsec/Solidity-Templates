// SPDX-License-Identifier: EPL-2.0

pragma solidity ^0.8.26;
import "./NameB.sol";

contract NameA {
    NameB B;
    uint public i;

    constructor(address _runner) payable {
        i = 100;
        B = NameB(_runner);
    }

    function Bfn() external {
        i = B.fn();
    }
}
