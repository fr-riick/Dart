import 'package:oop/07_polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('Preparando os equipamentos e dando a anestesia');
  }

}