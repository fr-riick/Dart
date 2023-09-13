

import 'package:oop/16_ordenacao_default/cliente.dart';

void main(List<String> args) {
  var c1 = Cliente(nome: 'Rick', telefone: '123123');
  var c2 = Cliente(nome: 'luan', telefone: '321321');
  var c3 = Cliente(nome: 'Bredy', telefone: '121212');
  var c4 = Cliente(nome: 'Gustavo', telefone: '121212');

  var lista = [c1, c2, c3, c4];
  print(lista);

  lista.sort();
  print(lista);
}