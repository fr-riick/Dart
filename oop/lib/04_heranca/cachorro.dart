import 'package:oop/04_heranca/animal.dart';

class Cachorro extends Animal {

  // Construtor que herda do construtor de animal
  Cachorro({required int idade, required String tamanho}) : super(idade: idade){
    this.tamanho = tamanho;

  }

  // Método de animal que precisa ser sobrescrito
  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
