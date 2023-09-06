
void main(List<String> args) {
  
  // #1 Função arrow
  // Um função simples que cabe em uma linha
  // o proprio dart ja entende que depois da arrow é um return
  int somaInt (int n1, int n2) => n1 + n2;
  print(somaInt(3, 3));

  // #2 Funções anônimas
  // Não tem nome
  // Pode ser atribuida a uma variável
  // exemplo de uma função anônima
  // (){
  // };
  // agora um exemplo atribuindo a uma variavel e usando arrow function
  var saudacao = (String saudacao) => print(saudacao);
  saudacao("oi");

  // #3 Função que recebe uma função como parametro
  // É uma função que vai fazer tudo o que tem que fazer e tbm executar outra 
  // função que foi passada no parametro.
  // Pode ser usada uma função anônima como parametro
  void calcular(int n1, int n2, Func){
    var resultado = Func(n1, n2);
    print(resultado);
  }
  
  // #4 Typedef
  // chamei a funçao calcular usando typedef, passando como parametro uma função
  // anonima.
  // Essa funcao do parametro precisa ser como foi especificada no typedef que
  // criei. Uma função que retorna int, e que recebe dois inteiros como parametro
  calcular(2, 3, (int n1, int n2) => n1 + n2);
  
 // #5 Exemplo usando tudo que foi aprendido nesse módulo
  chamarUmaFuncaoDeUmParametro("Gustavo", (nome) => print("$nome Enrique"));

}

// #4 Typedef
// da uma apelido a um tipo
typedef Func = int Function(int n1, int n2);


// #5 Outro exemplo usando tudo
void chamarUmaFuncaoDeUmParametro(String nome, FuncaoQueRecebeNome funcao){
  funcao(nome);
}

typedef FuncaoQueRecebeNome = Function (String nome);