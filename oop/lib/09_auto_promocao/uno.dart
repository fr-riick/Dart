

import 'package:oop/09_auto_promocao/carro.dart';

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