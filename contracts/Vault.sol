pragma solidity ^0.4.0;

import "./EtherLock.sol";

// This is the parent contract
contract Vault {
  EtherLock[16] etherLocks;
  address owner;

  function Vault() {
    owner = msg.sender;
  }

  function addTimeLock(address user, uint time) {
    EtherLock newLock = new EtherLock();
    /*etherLocks.push(newLock);*/
  }
}
