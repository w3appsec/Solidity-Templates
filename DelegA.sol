// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DelegA {
    uint256 public num;
    address public sender;
    uint256 public value;

    constructor() payable {}

    function BsetAvars(address _B, uint256 _num) public {
        // A's storage is set, B is not modified.
        (bool success, ) = _B.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
        require(success);
    }
}
