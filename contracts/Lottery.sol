// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

//escrevendo smart contract 
    //linguagem para smart 

contract Loterry{
        address public immutable  OWNER;
        // vai ser executado somente uma vez
        // adicionando array de andress para os jogadores
        address[] public players;

    constructor(){  
        //1 pegar o andress de quem tá criando o contrato. quem está colocando na blockchain
        OWNER = msg.sender;
    }

    //função para o usuário pagar o gás para entrar ao sorteio
    function enter() public payable {
        // lógica para pagar 
        require(msg.value == 0.1 ether, 'Invalid Amount');

        // colocar o endereço da pessoa que entrou no adress players.

        players.push(msg.sender);
    }
    //função de randominização

    // função view para retornar um array de endereços dos jogadores da loterica
    function getPlayers() public view returns (address[] memory){
        return players;
    }

    //tipo middle 
    modifier onlyOwner {
         require(OWNER == msg.sender, 'Only Owner');
         //_ para dizer ao solitudy executar o código
         _;
    }
}