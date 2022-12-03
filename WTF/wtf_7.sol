// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
contract wft_7{
    function global() external view returns(address, uint, bytes memory){
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;
        return(sender, blockNum, data);
    }
}