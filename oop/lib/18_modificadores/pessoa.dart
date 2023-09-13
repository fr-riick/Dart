class Pessoa {
  final String nome;
  final int idade;

  // como o construtor é const, as duas instancias são iguais sem precisar do equals.
  // pro construtor ser const os atributos tem que ser final pra n serem mais alterados
  // depois da construção da instancia
  const Pessoa({
    required this.nome,
    required this.idade,
  });
}
