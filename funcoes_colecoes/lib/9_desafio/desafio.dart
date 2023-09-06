void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  // Transformando a lista em uma lista sem repetições
  var pessoasSemRep = pessoas.toSet().toList();
  // Colocando a lista em ordem alfabetica
  pessoasSemRep.sort();
  print(
      '-----------------------------------------------------------------------------------------------------------------------------------------');
  print("1 - Remova os pacientes duplicados e apresente a nova lista");
  print(
      '-----------------------------------------------------------------------------------------------------------------------------------------');
  for (var pessoa in pessoasSemRep) {
    print(pessoa);
  }

//! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  var nomeHomens = [];
  var nomeMulheres = [];
  for (var pessoa in pessoasSemRep) {
    var dadosPessoa = pessoa.split('|');
    if (dadosPessoa[2].toLowerCase() == "masculino") {
      nomeHomens.add(dadosPessoa[0]);
    } else {
      nomeMulheres.add(dadosPessoa[0]);
    }
  }

  print(
      '-------------------------------------------------------------------------------------------------------');
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  print(
      '-------------------------------------------------------------------------------------------------------');
  print("Homens na lista = ${nomeHomens.length}");
  print(nomeHomens);
  print("Mulheres na lista = ${nomeMulheres.length}");
  print(nomeMulheres);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  var pessoaMaisVelha = [];
  var maiorIdade = 0;
  var pessoasMaioresDeIdade = [];
  for (var pessoa in pessoasSemRep) {
    var dadosPessoa = pessoa.split('|');
    if (int.parse(dadosPessoa[1]) > 18) {
      pessoasMaioresDeIdade.add([dadosPessoa[0], dadosPessoa[1]]);
      if (int.parse(dadosPessoa[1]) > maiorIdade) {
        maiorIdade = int.parse(dadosPessoa[1]);
        pessoaMaisVelha = [dadosPessoa[0], dadosPessoa[1]];
      }
    }
  }
  print(
      '-------------------------------------------------------------------------------------------------------');
  print(
      "3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome");
  print(
      '-------------------------------------------------------------------------------------------------------');
  print("Pessoas maiores de idade");
  for (var pessoa in pessoasMaioresDeIdade) {
    print("Nome: ${pessoa[0]}, idade: ${pessoa[1]}");
  }
  print(
      '-------------------------------------------------------------------------------------------------------');
  print("4 - Encontre a pessoa mais velha e apresente o nome dela.");
  print(
      '-------------------------------------------------------------------------------------------------------');
  print("Nome: ${pessoaMaisVelha[0]}, idade: ${pessoaMaisVelha[1]}");
}