// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract wtf_6{
// array, memory, struct 在使用时必须要声明数据存储的位置


    // calldata一般用于函数的参数，不能修改
    function fCalldata(uint[] calldata _x) public pure returns(uint[] memory){
        //参数为calldata数组，不能被修改
        // _x[0] = 0; //这样修改会报错
        return(_x);
    }

    uint[] public x = [1,2,3]; // 状态变量：数组 x

    function fStorage() public{
        //声明一个storage的变量 xStorage，指向x。修改xStorage也会影响x
        uint[] storage xStorage = x;
        xStorage[0] = 100;
    }

    
    function fMemory() public view{
        //声明一个Memory的变量xMemory，复制x。修改xMemory不会影响x
        uint[] memory xMemory = x;
        xMemory[0] = 100;
        xMemory[1] = 200;
        uint[] memory xMemory2 = x;
        xMemory2[0] = 300;
    }
}