void main() {
  var p1 = Pessoa();
  p1.nome = 'Rickardo';
  print(p1.nome);
}

class Pessoa {
  String? _nome;

  // getter
  String? get nome => _nome;

  // setter
  set nome(String? nome) {
    if (nome != null && nome.length >= 5) {
      _nome = nome;
    } else {
      print('Nome deve conter pelo menos 5 caracteres');
    }
  }
}
