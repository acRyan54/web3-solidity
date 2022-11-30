// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;
contract wtf_3{
    int public _number = 100;
    int public _number1 = int(_number);
    // pure不可以读取、改写合约里的状态变量
    function square(int x) public pure returns(int){
        return x**2;
    }
    int public _number2 = square(_number1);
}