import 'package:oop/07_polimorfismo/medico.dart';

class Obstetra extends Medico {
  @override
  void operar() {
    print('fazendo o parto');
  }

}