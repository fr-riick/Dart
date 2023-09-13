import 'package:oop/10_mixins/joao.dart';

void main(List<String> args) {
  // mixins
  // pra quando vc quer herdar mais de uma classe.
  // se a classe chamar mixin, ela n pode ser extends, apenas with

  var joao = Joao();

  print('''
${joao.runtimeType}
  Habilidade: ${joao.habilidade()}
  Cantar: ${joao.cantar()}
  Dançar: ${joao.dancar()}
  ''');
}
