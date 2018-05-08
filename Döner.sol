pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Döner is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Döner(address _owner)  UpgradeableToken(_owner) {
    name = "Döner";
    symbol = "DNR";
    totalSupply = 250000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}