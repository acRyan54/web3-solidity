// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract OtherContract {
    uint256 private _x = 0; // 状态变量x
    event Log(uint amount, uint gas);
    
    function getBalance() view external returns(uint) {
        return(address(this).balance);
    }

    // 可以调整状态变量_x的函数，并且可以往合约转ETH (payable)
    function setX(uint256 x) external payable{
        _x = x;
        if(msg.value > 0){ // 记录是否转ETH
            emit Log(msg.value, gasleft());
        }
    }

    function getX() external view returns(uint x){
        x = _x;
    }
}

// 通过合约地址，声明合约变量，完成函数调用
contract CallContract {

    function callSetX(address _Address, uint256 x) external{
        OtherContract(_Address).setX(x);
    }

    function callGetX(OtherContract _Address) external view returns(uint x){
        x = _Address.getX();
    }

    function callGetX2(address _Address) external view returns(uint x){
        // OtherContract oc = OtherContract(_Address);
        // x = oc.getX();
        x = OtherContract(_Address).getX();
    }

    // 如果目标合约的函数是payable的，那么我们可以通过调用它来给合约转账
    function setXTransferETH(address _Address, uint256 x) external payable{
        OtherContract(_Address).setX{value: msg.value}(x);
    }
}