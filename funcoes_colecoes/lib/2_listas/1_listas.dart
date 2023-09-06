
void main(List<String> args) {
 // Array bidmensional
  var  lista = [
    [1, 2, 3],
    [4, 5],
    [6, 7]
  ];
  // printa a posição 0 do array de indice 1 da lista
  print(lista[1][0]);

  // método expand passa por todos os itens da lista de listas
  // nesse caso eu retorno todos pra uma lista nova, e transformo em lista 
  // novamente pois é um método iterable
  var listaCompleta = lista.expand((element) => element).toList();
  // printo a lista nova
  print(listaCompleta);

  // any
  // verifica se tem algum valor especifico na lista
  final listaBusca = ["Rodrigo", "Jorge", "Lucas", "Maria"];
  
  if(listaBusca.any((nome) => nome == "Jorge")){
    print("Tem Jorge");
  }else{
    print("Não tem Jorge");
  }

  // every
  // verifica se todos os itens da lista possuem algo
  final listaBusca2 = ["Rodrigo", "Jorge", "João", "Carlos"];

  if (listaBusca2.every((nome) => nome.toUpperCase().contains("J"))) {
    print('Todos tem "J"');
  }else{
    print('Nem todos tem "J"');
  }

  // Sort
  // Ordenar a lista

  var listaOrdenada = [99, 1, 6, 15, 30];
  listaOrdenada.sort();
  print(listaOrdenada);

  // var listaPacientes = [
  //   "Gustavo Enrique|24",
  //   "Mariana Fernandes|26",
  //   "Ellen França|17",
  //   "Elismar Freitas|49"
  // ];

  // listaPacientes.sort((paciente1, paciente2){
  //   final pacienteDados1 = paciente1.split('|');
  //   final pacienteDados2 = paciente2.split('|');

  //   final idadePaciente1 = int.parse(pacienteDados1[1]);
  //   final idadePaciente2 = int.parse(pacienteDados2[1]);

  //   if(idadePaciente1 > idadePaciente2){
  //     return 1;
  //   } else if(idadePaciente1 == idadePaciente2){
  //     return 0;
  //   } else {
  //     return -1;
  //   }

  // });
  // print(listaPacientes);




  // usando o método compareTo
  // faz a ordenação de inteiros
  var listaPacientes2 = [
    "Gustavo Enrique|24",
    "Mariana Fernandes|26",
    "Ellen França|17",
    "Elismar Freitas|49"
  ];

  listaPacientes2.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);


}