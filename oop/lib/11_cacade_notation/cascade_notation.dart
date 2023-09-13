void main() {

  // cascade notation
  // ja cria variavel executando algo.
  var pessoa = Pessoa()
  ..nome = 'Gustavo Enrique'
  ..email = 'rick@123.com'
  ..site = 'rick.com.br';
  
  // pessoa.nome = 'Gustavo Enrique';
  // pessoa.email = 'rick@123.com';
  // pessoa.site = 'rick.com.br';

  // exemplo com um map
  var mapa = <String, String> {}
  ..putIfAbsent('nome', () => 'rick')
  ..putIfAbsent('email', () => 'rick@123.com');

  print(mapa);

  print('''
Pessoa:
  Nome: ${pessoa.nome}
  Email: ${pessoa.email}
  Site: ${pessoa.site}
  ''');
  
}

class Pessoa {
  String? nome;
  String? email; 
  String? site;
}