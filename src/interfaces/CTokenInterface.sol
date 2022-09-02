// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import "../vendor/@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface CTokenLike {
  function balanceOf(address holder) external returns (uint);
  function transfer(address dst, uint256 amt) external returns (bool);
  function mint(uint mintAmount) external returns (uint);
  function redeem(uint redeemTokens) external returns (uint);
}

interface CErc20 is CTokenLike {
  function underlying() external returns (IERC20);
  function borrow(uint amount) external returns (uint);
}
