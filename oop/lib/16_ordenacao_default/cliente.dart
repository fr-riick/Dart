// Ordenação default
// implemento comparable da classe e dou o override no método de comparação
class Cliente implements Comparable<Cliente>{
  String nome;
  String telefone;

  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() => 'Cliente(nome: $nome, telefone: $telefone)';
  

  // sempre que eu quiser ordenar uma lista dessa classe é só eu colocar instancia.sort() pois eu ja tenho o método
  // compareTo dentro da classe
  @override
  int compareTo(Cliente other) {
    return nome.compareTo(other.nome);
  }
}
