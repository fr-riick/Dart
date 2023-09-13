class Produto {
  final int _id;
  final String nome;
  final double _preco;

// Se o atributo for private não da pra criar o construtor com o this.atributo ja
// no construtor, precisa atribuir a uma variavel antes. Se esse atributo for final
// é necessário fazer da seguinte forma, colocando dois pontos (:) e depois atribuindo os 
// valores antes do corpo do construtor, pois no  corpo do construtor os atributos
// ja foram inicializados como null
  Produto({
    required int id,
    required this.nome,
    required double preco,
  })  : _id = id,
        _preco = preco{
          print(_id);
          print(_preco);
        }


  // No caso do construtor factory isso não é necessário
  // exemplo:
  factory Produto.fabrica ({
    required int id,
    required String nome,
    required double preco,
  }) {
    return Produto(id: id, nome: nome, preco: preco);
  }
  
}
