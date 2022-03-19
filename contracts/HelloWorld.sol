// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details

contract HelloWorld{
    
    string public messageState = "ola semana solidity";
    string public constant MESSAGE_CONSTANT = "ola constante";
    address public constant DONATION_ADDRESS = 0x8ecAD4B7C7850b2978d08368d9d102a8b8f51CA0;
    
    address public immutable  OWNER;

    // criando constrcutor 
    constructor (){
        // OWNER VAI QUEM VAI FAZER O DEPLOY NA BLOCKCHAIN
            //MSG.SENDER VAI PEGAR O NOME DO ANDRSS DO CRIADOR DO CONTRATO
        OWNER = msg.sender;
    }

     //method 
        // função do tipo VIEW, pois irá visualizair a mensagem de estado
   function greetins() public pure returns (string memory){
       string memory internalmessage = "ola semana solidity";
       return internalmessage;
   }
    //retornando o numero do bloco.number
    function getBlockNumber() public view returns (uint256){
        return block.number;
    }
}