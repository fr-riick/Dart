void main(List<String> args) {
  var cor = Cores.laranja;
  print(cor.name);

  var azul = "azul";
  var corAzul = Cores.values.byName(azul);

  print(Cores.azul.name);
  print(corAzul);


  var coresMap = Cores.values.asNameMap();
  print(coresMap);
}

enum Cores {
  azul, vermelho, laranja, verde
}