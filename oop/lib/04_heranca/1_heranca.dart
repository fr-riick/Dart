import 'package:oop/04_heranca/cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10, tamanho: "grande");


  print('''
Cachorro 
  Tamanho: ${cachorro.tamanho}
  Idade: ${cachorro.idade}
  Idade Humana ${cachorro.calcularIdadeHumana()}
  ''');

}
