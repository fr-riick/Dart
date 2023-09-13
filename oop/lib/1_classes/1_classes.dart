import 'camiseta.dart';

void main(List<String> args) {

  // chamando o atributo e método da classe camiseta
  print(Camiseta.nome);
  Camiseta.recuperarNome();
  
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';
  // camisetaNike.material = 'Algodão';
  camisetaNike.regata = 'Manga longa';

  print('''
      Camiseta Nike:
        Tamanho ${camisetaNike.tamanho}
        Cor: ${camisetaNike.cor}
        Marca: ${camisetaNike.marca}
        Tipo De Lavagem: ${camisetaNike.tipoDeLavagem()}
        Tamanho da manga: ${camisetaNike.regata}
''');

  var camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'Branca';
  camisetaAdidas.marca = 'Adidas';
  camisetaAdidas.material = 'Nylon';
  camisetaAdidas.regata = 'Regata';

  print('''
      Camiseta Adidas:
        Tamanho ${camisetaAdidas.tamanho}
        Cor: ${camisetaAdidas.cor}
        Marca: ${camisetaAdidas.marca}
        Tipo De Lavagem: ${camisetaAdidas.tipoDeLavagem()}
        Tamanho da manga: ${camisetaAdidas.regata}
''');
}
