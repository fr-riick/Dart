
void main(List<String> args) {

  // Ter cuidado pois uma funçao que recebe uma lista como parametro dependendo
  // doq for feita, pode alterar a lista na memoria. O ideal é criar uma lista copia
  // e efetuar as mudanças nela
  var lista =["Gustavo"];
  print(lista);

  funcao(lista);
  print(lista);

  funcao2(lista);
  print(lista);
}
// Forma errada, modificando a propria lista de fora da funcao
void funcao (List <String> nomes){
  nomes.add('Enrique');
}
// Forma correta criando uma lista copia
void funcao2 (List <String> nomes){
  var listaCopia = [...nomes];
  listaCopia.add('Freitas');
  print(listaCopia);
}