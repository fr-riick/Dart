import 'package:oop/18_modificadores/pessoa.dart';

void main(List<String> args) {
  var p1 =  const Pessoa(nome: 'Rodrigo', idade: 37);
  var p2 =  const Pessoa(nome: 'Rodrigo', idade: 37);
  
  // como o construtor é const, as duas instancias são iguais sem precisar do equals.
  print(p1 == p2);

  
}