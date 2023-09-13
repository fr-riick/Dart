import 'package:oop/20_metadatas/fazer.dart';

@Fazer(
  quem: 'Rick na class',
  oque: 'tentando ler a anotacao da classe',
)
class Pessoa {

@Fazer(
  quem: 'Rick no atributo',
  oque: 'tentando ler a anotacao do atributo',
)
  String? nome;

@Fazer(
  quem: 'Rick no metodo',
  oque: 'tentando ler a anotacao do metodo',
)
  void fazerAlgo(){

  }
}
