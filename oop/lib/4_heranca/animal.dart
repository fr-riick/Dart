// Classe abstrata
// só serve pra ser herdada, n pode ser instanciada
abstract class Animal {
  
  // Atributos
  String? tamanho;
  final int idade;

  // Construtor
  Animal({required this.idade});

  // Métodos 
  // Esse método precisa ser obrigatoriamente sobrescrito pela classe que herdar
  // de animal, por isso ele termina com ponto e vírgula.
  int calcularIdadeHumana();
}