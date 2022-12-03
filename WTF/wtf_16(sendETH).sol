// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract ReceiveETH {
    event Log(uint amount, uint gas);

    receive() external payable{
        emit Log(msg.value, gasleft());
    }
    function getBalance() view public returns(uint) {
        return address(this).balance;
    }
}

contract SendETH {
    constructor() payable{}
    receive() external payable{}

    error CallFailed();
    function callETH(address payable _to, uint256 amount) external payable{
        // 处理下call的返回值，如果失败，revert交易并发送error
        (bool success, ) = _to.call{value: amount}("");
        if(!success){
            revert CallFailed();
        }
    }
}
