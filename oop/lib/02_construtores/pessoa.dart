class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // Contrutor normal / Default
  Pessoa({
    this.nome = 'Gustavo Enrique',
    required this.idade,
    required this.sexo,
  });

  // Construtor nomeado
  // Caso queira ter outro construtor
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

  // Construtor factory
  // pra quando precisa de uma regra de negócio no construtor
  factory Pessoa.factory(String nomeConstrutor) {
    var pessoa = Pessoa.vazia();
    var nome = '$nomeConstrutor Enrique';
    pessoa.nome = nome;

    return pessoa;
  }
}
