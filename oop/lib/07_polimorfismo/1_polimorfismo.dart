import 'package:oop/07_polimorfismo/anestesista.dart';
import 'package:oop/07_polimorfismo/obstetra.dart';

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
