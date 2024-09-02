// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract CallSigB {
    event Received(address caller, uint256 amount, string message);
    uint public i;
    uint public rxVal;
    string public phrase;
    fallback() external payable {
        emit Received(msg.sender, msg.value, "Fallback called");
    }

    receive() external payable { }

    function rxFn(string memory _message, uint256 _x)
        external payable returns (uint256)
    {
        emit Received(msg.sender, msg.value, _message);
        i++;
        rxVal = msg.value;
        phrase = _message;
        return _x + 1;
    }

    function getRxVal() external  view returns (uint) {
       return address(this).balance;
    }
}
