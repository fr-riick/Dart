import 'package:oop/04_heranca/animal.dart';

class Cachorro extends Animal {

  // Construtor que herda do construtor de animal
  // super é enviando pro contrutor do pai
  Cachorro({required super.idade, required String tamanho}){
    this.tamanho = tamanho;
  }

  // Método de animal que precisa ser sobrescrito
  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
