import 'package:oop/7_polimorfismo/anestesista.dart';
import 'package:oop/7_polimorfismo/obstetra.dart';

import 'medico.dart';

void main() {
  var medicos = <Medico>[
    Anestesista(),
    Obstetra(),
  ];


  for (var medico in medicos) {
    medico.operar();
  }
}
