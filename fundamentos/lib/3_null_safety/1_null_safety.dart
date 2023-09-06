// Colocar interrogação após o tipo da variável faz ela aceitar nulo.
// Variáves de nível superior só podem ser criadas sem inicializar se puderem receber nulo
String? upperName;

void main(){

  // criando uma variável local que pode receber nulo
  String? fullName;
  print("No momento a variável nomeCompleto é nula = (${fullName})");

  // A exclamação após o nome da variavel garante pro compilador que a variavel não é nula.
  // Isso não é recomendável, o ideal é fazer um tratamento de nulos.
  // no exemplo abaixo teremos um erro pois estamos garantindo que a variável foi inicializada, mas ela não foi.
  print(fullName!.length);

}