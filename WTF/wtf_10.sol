// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract wtf_10{
    // 插入排序
    function insertionSort(uint[] memory a) public pure returns(uint[] memory) {
        // note that uint can not take negative value
        for(uint i = 1; i < a.length; i++){
            uint tmp = a[i];
            uint cntIndex = i;
            while( (cntIndex >= 1) && (tmp < a[cntIndex - 1])){
                a[cntIndex] = a[cntIndex - 1];
                cntIndex--;
            }
            a[cntIndex] = tmp;
        }
        return(a);
    }
}