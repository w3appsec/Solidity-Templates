// SPDX-License-Identifier: EPL-2.0

pragma solidity ^0.8.26;
import "./NewB.sol";

contract NewA {
    NewB B = new NewB();
    uint public ii;

    constructor() payable {
        ii = 50;
        B.init();
    }

    function callRevertFn() public view {
        B.revertFn();
    }

    function getI() external {
        ii = B.bumpI();
    }

    function asmFn() external pure {
    }
}
