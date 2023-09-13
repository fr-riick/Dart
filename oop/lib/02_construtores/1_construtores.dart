import 'package:oop/02_construtores/pessoa.dart';

void main() {

  //  chamando Construtor
  var pessoa1 = Pessoa(idade: 24, sexo: 'Masculino');
  print(pessoa1.nome);

  // Chamando Construtor nomeado
  var pessoa2 = Pessoa.semNome(idade: 26, sexo: 'Feminino');
  print(pessoa2.nome);

  var pessoa3 = Pessoa.vazia();
  pessoa3.nome = 'Rick';
  print(pessoa3.nome);

  // Chamando Construtor factory
  var pessoa4 = Pessoa.factory('Gustavo');
  print(pessoa4.nome);
}
