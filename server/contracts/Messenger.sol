pragma solidity ^0.5.0;

contract Messenger {
    address owner;
    string[] messages;

    constructor() public {
        owner = msg.sender;
    }

    function add(string memory myMessage) public {
      require(msg.sender == owner);
      messages.push(myMessage);
    }

    function getMessage(uint index) view public returns(string memory){
        return messages[index];

    }
}
