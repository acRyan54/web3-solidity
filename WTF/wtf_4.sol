// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract wtf_4{
    uint public n = 5;
    // internal外部无法访问，public和external可以
    function add_pure(uint x) public pure returns(uint res){
        res = x + 1;
    }
    uint public res0 = add_pure(n);
    // 
    function add() external{
        n = n + 1;
    }
    // 只能访问，不能修改状态变量
    function add_view() external view returns(uint res){
        res = n + 1;
    }
}