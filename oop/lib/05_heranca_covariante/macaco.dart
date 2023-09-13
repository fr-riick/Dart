import 'package:oop/05_heranca_covariante/mamifero.dart';
import 'banana.dart';

class Macaco extends Mamifero {

  @override
  void comer(Banana fruta) {
    print("o macaco come banana ${fruta.tipo}");
  }

}