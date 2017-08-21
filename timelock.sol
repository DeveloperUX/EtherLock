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
    bool isLocked;

    event Deposited(address addr, uint amount);
    event Withdrew(address addr, uint amount);

    // Constructor
    function EtherLock() {
        // Who owns this contract?
        owner = msg.sender;
        isLocked = true;
    }

    function deposit() payable {
        Deposited(msg.sender, msg.value);
    }

    function withdraw() {
        if (msg.sender == owner) {
            uint amount = this.balance;
            bool success = owner.send(this.balance);
            if (success) {
                Withdrew(owner, amount);
            }
        }
    }

    function getAmount() constant returns(uint) {
        return this.balance;
    }

    function getIsLocked() constant returns(bool) {
        return isLocked;
    }

    function setTime(uint256 time) {
        unlockTime = now + 1 minutes;
    }

    function getTime() constant returns(uint256) {
        return unlockTime;
    }
}
