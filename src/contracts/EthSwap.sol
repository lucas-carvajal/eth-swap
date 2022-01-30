pragma solidity >=0.4.21 <0.6.0;

import "./Token.sol";

contract EthSwap {
    string public name = "EthSwap Instant Exchange";
    Token public token;
    uint public rate = 100;

    constructor(Token _token) public {
        token = _token;
    }

    function buyTokens() public payable {
        // calculate number of tokens to buy
        uint tokenAmount = msg.value * rate;
        token.transfer(msg.sender, tokenAmount);
    }

}


