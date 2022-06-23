//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract SimpleContract {
  address owner;
  mapping (address => uint) public accounts;

  function getValue() external payable{
    accounts[msg.sender]+=msg.value;
  }

  function getBalance() public view returns(uint256){
   return msg.sender.balance;
  }

  function refund(uint256 valueOfRefund) external {
     require(accounts[msg.sender] >= valueOfRefund);
     accounts[msg.sender] -= valueOfRefund;
  }
}