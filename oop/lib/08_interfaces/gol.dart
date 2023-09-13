import 'package:oop/08_interfaces/carro.dart';

class Gol implements Carro {
  @override
  String marca = 'Wolkswagem';
  @override
  double motor = 1.6;
  @override
  int portas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }
  
}
