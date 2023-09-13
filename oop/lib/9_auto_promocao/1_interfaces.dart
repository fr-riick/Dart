import 'package:oop/9_auto_promocao/carro.dart';
import 'package:oop/9_auto_promocao/gol.dart';
import 'package:oop/9_auto_promocao/uno.dart';

void main() {
  
  var gol = Gol();
  var uno = Uno();

  dadosCarro(gol);
  dadosCarro(uno);

  Carro golCarro = Gol();

  // Quando checamos se a variavel é(is) de um tipo
  // caso ela seja o dart vai automaticamente converter essa instancia
  // para a classe do Tipo!
  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }

}

void dadosCarro(Carro carro) {
  print('''
Carro:
  Tipo: ${carro.runtimeType}
  Marca: ${carro.marca}
  Portas: ${carro.portas}
  Motor: ${carro.motor}
  Velocidade máxima: ${carro.velocidadeMaxima()}
  Tipo de roda: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível'}
  ''');
}
