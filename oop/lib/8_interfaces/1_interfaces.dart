import 'package:oop/8_interfaces/gol.dart';
import 'package:oop/8_interfaces/uno.dart';
import 'carro.dart';

void main(List<String> args) {
  var gol = Gol();
  var uno = Uno();

  dadosCarro(gol);
  dadosCarro(uno);
}

void dadosCarro(Carro carro) {
  print('''
Carro:
  Tipo: ${carro.runtimeType}
  Marca: ${carro.marca}
  Portas: ${carro.portas}
  Motor: ${carro.motor}
  Velocidade máxima: ${carro.velocidadeMaxima()}
  ''');
}
