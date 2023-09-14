import 'package:oop/07_polimorfismo/anestesista.dart';
import 'package:oop/07_polimorfismo/obstetra.dart';
import 'medico.dart';

void main() {
  var medicos = <Medico>[
    Anestesista(),
    Obstetra(),
  ];


  // polimorfismo é a habilidade de objetos de classes diferentes responderem a mesma mensagem de diferentes maneiras
  // o mesmo método pode responder de formas diferentes em cada objeto
  for (var medico in medicos) {
    medico.operar();
  }
}
