void main(){
  final nomes = ['Rick', 'Lucas', 'Maria', 'Jose'];

  // forma antiga
  // final pessoasAntigo = nomes.map((e) => Pessoa(e)).toList();
  
  // o new uso caso o construtor não seja nomeado
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  // final pessoas = nomes.map(Pessoa.nome).toList();
  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }


}



class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);
}