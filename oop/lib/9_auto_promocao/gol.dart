

import 'package:oop/9_auto_promocao/carro.dart';

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

  String tipoDeRodas(){
    return 'Esportivas';
  }
}
