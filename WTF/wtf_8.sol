// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
contract wft_8{
    int[4] x1 = [int(10), 1, 2, 3];
    uint[] x2 = [uint(1), 2, 2];
    int[] x3 = new int[](3);
    int[] x4 = new int[](5);
    function foo() public pure{
        // 动态数组，你需要一个一个元素的赋值
        uint[] memory y;
        y[0] = 1;
        y[1] = 2;
        y[2] = 3;
    }
}