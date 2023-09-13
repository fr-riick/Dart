import 'package:oop/7_polimorfismo/medico.dart';

class Obstetra extends Medico {
  @override
  void operar() {
    print('fazendo o parto');
  }

}