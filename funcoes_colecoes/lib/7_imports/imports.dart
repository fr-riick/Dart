// import se tiver na mesma pasta
// dando apelido caso tenha as mesmas funçoes em 2 imports diferentes usando snack_case
import 'soma/soma.dart' as soma;
import 'soma_nova/soma_nova.dart' as soma_nova;
// Se tiver fora da pasta precisa sair da pasta antes, como é no cmd
// import '../0_treino/treino.dart';
// Usando Package
// se baseia na pasta lib sempre
// import 'package:funcoes_colecoes/0_treino/treino.dart';
void main(List<String> args) {
  // usando o apelido que eu dei nos imports antes de chamar as funções
  var totalDoubles = soma.somaDoubles(4.5, 3.5);
  var totalInteiros = soma_nova.somaInteiros(4, 3);
  print(totalDoubles);
  print(totalInteiros);
}