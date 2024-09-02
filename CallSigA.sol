// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract CallSigA {
    event Response(bool success, bytes data);
    uint public i;
    constructor() payable {
        i = 0;
    }

    function callTx(address payable _addr) external payable {
        (bool success, bytes memory data) = _addr.call{
            value: 1
        }(abi.encodeWithSignature("rxFn(string,uint256)", "callTx", i++));

        emit Response(success, data);
    }

    // function does not exist triggers fallback
    function callNoExist(address payable _addr) external payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("doesNotExist()")
        );

        emit Response(success, data);
    }
}
