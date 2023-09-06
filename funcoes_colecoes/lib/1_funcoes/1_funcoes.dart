
void main() {
  // Chamando a função de Soma e passando seus parâmetros
  // jogando o retorno da função para a variavel "valorCaculado" e printando ela depois
  final valorCaculado = somaInteiros(5, 5);
  print("A soma dos inteiros é $valorCaculado");
}

// Criando a função que recebe dois números inteiros como parâmetro e faz
// a soma dos mesmos
int somaInteiros (int n1, int n2){
  return n1 + n2;
}