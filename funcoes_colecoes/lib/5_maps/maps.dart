void main(List<String> args) {
  // Maps
  // São acessados pela chave e não pelo índice

  // Criação de map normal
  Map <String, String> paciente = {
    "nome": "Gustavo",
    "idade": "24",
    "nacionalidade": "Brasil"
  };
  print(paciente["nome"]);

  // Map opcional
  Map <String, String>? paciente2;
  print(paciente2);

  // Key e Value opcionais
  var paciente3 = <String?, String?>{};
  print(paciente3);

  // Método putIfAbsent
  // adiciona caso não existir aquela chave no MAP
  var produtos = <String, String>{};
  produtos.putIfAbsent("nome", () => "Cerveja");
  print(produtos);

  //  update
  // atualiza os dados
  produtos.update("nome", (value) => "Refrigerante");
  print(produtos);

  // Caso eu de um update e queira adicionar o valor se a chave não existir
  // posso usar o método ifabsent passando uma função anonima pra ele adicionar um novo
  // valor
  produtos.update("preço", (value) => "10", ifAbsent: () => "10");
  print(produtos);

  // for each nos Maps
  print('for each');
  produtos.forEach((key, value) {
    print("Chave: $key, Value: $value");
  });

  // for in
  // pra quando for fazer algum processo assyncrono dentro dele
  print("for in");
  for (var entry in produtos.entries) {
    print("Chave: ${entry.key}, Value: ${entry.value}");
  }

  // pode fazer assim tbm
  print("-------------");
  print("Chaves");
  for (var keys in produtos.keys) {
    print(keys);
  }
  print("-------------");
  print("Valores");
  for (var values in produtos.values) {
    print(values);
  }

  // Método map nos Maps
  // para fazer transformação no seu Map
  // precisa retornar um MapEntry pra retornar o novo mapa com transformações
  print("-----------");
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry('#$key', value.toUpperCase());
  });
  print(novoMapaProdutos);

  // exemplo de Map com varios tipos como uma lista de Maps de String
  var mapa = <String, Object>{
    "nome": "Gustavo Enrique",
    "cursos": [
      {
        "nome": "academia do flutter",
        "descricao": "Melhor curso de flutter do Brasil"
      },
      {
        "nome": "academia do Dart",
        "descricao": "Melhor curso de Dart do Brasil"
      }
    ]
  };

  print(mapa);
}