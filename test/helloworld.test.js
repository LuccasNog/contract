const HelloWorld = artifacts.require("HelloWorld");

//Criando contrato
contract('HelloWorld', function(accounts) {
  //adicionando dentro do HelloWord
  beforeEach(async () => {
    contract = await HelloWorld.new();
  });
  //Teste 
  it('need show greetins', async () => {
    //pegando contract, testar retorno da função
    const res = await contract.greetins();
    //asset o que tiver dentro se der falso, vai dar falha no teste
    assert(res === "Olá semana solidity");
  });
});
