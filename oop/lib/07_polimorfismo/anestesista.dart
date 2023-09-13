import 'package:oop/7_polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('Preparando os equipamentos e dando a anestesia');
  }

}