import 'package:oop/8_interfaces/carro.dart';

class Uno implements Carro {
  @override
  String marca = 'Fiat';
  @override
  double motor = 1.0;
  @override
  int portas = 2;

  @override
  int velocidadeMaxima() {
    return 160;
  }
}
