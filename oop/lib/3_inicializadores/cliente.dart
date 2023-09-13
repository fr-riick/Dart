class Cliente {

  // late
  // dart entende que ele vai ser inicializado
  // Cuidado
  // Se não for inicializado depois, dará erro apenas em tempo de execução
  late final String _nome;

  Cliente({required String nome}){
    _nome = nome;
  }

  // getter
  String get nome => _nome;

  // setter
  set nome (String n){
    _nome = n;
  }
  
}