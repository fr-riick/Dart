import 'package:oop/4_heranca/cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10, tamanho: 'Grande porte');

  print('''
Cachorro 1
  Tamanho: ${cachorro.tamanho}
  Idade: ${cachorro.idade}
  Idade Humana ${cachorro.calcularIdadeHumana()}
  ''');
}
