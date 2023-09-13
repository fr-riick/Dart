
import 'package:oop/15_equals_hashcode/pessoa.dart';

void main(List<String> args) {
  
  var p1 = Pessoa(nome: 'Rick');
  var p2 = Pessoa(nome: 'Rick');

  // com o método toString da pra printar a instancia
  print(p1);

  print(p1.hashCode);
  print(p1.hashCode);

  if (p1 == p2) {
    print('é igual');
  } else {
    print('não é igual');
  }

}