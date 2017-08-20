pragma solidity ^0.4.0;


// This is the parent contract 
// contract Vault {
//     EtherLock[16] timeLocks;
//     address owner;
    
//     function Vault() {
//         owner = msg.sender;
//     }
    
//     function addTimeLock(address user, uint time) {
        
//     }
// }

contract EtherLock {
    
    // Keep track of the original contract owner
    address owner;
    uint unlockTime;
    
    // Constructor
    function EtherLock() {
        // Who owns this contract?
        owner = msg.sender;    
    }
    
    function setAmount() payable {}
    
    function getAmount() constant returns(uint) {
        return this.balance;
    }

    function setTime(uint256 time) {
        unlockTime = now + 30 minutes;
    }    
    
    function getTime() constant returns(uint256) {
        return unlockTime;
    }
}
