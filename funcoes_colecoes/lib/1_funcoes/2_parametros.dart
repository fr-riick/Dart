
void main(List<String> args) {
  // #1
  // Parametros obrigatórios
  // São obrigatórios
  // Devem ser passados na ordem que foram criados
  int somaInteiros(int n1, int n2) {
    return n1 + n2;
  }

  print("A soma de 10 + 10 é = ${somaInteiros(10, 10)}");

  // #2
  // Parametros nomeados
  // Tem que colocar as chaves entre os parametros pra indicar que sao nomeados
  // Podem ser nulos por default, ou seja são opcionais
  // Precisam ser nomeados antes de passar o valor deles
  // Não precisam ser passados na ordem que foram criados
  //  precisam ser os ultimos parametros
  double somaDoubles({double? n1, double? n2}) {
    if (n1 != null && n2 != null) {
      return n1 + n2;
    }
    return 0.0;
  }

  print("A soma de 10.2 + 10.2 é = ${somaDoubles(n2: 10.2, n1: 10.2)}");

  // #3
  // Parametros nomeados obrigatórios
  // Na declaração da funçào colocar a palavra required antes de criar o parametro
  // Basicamente são a mesma coisa que os parametros obrigatórios mas é
  // necessário nomear antes de passar o valor
  double somaDoublesObrigatorios({required double n1, required double n2}) {
    return n2 + n2;
  }

  print(
      "A soma de 10.5 + 10.5 é = ${somaDoublesObrigatorios(n1: 10.5, n2: 10.5)}");

  // #4
  // Parametros Default
  // Recebem um valor default na declaração dos parametros
  // esses valores são atribuidos caso não sejam passados no parametro da função
  double somaDoublesDefaults({double n1 = 0, double n2 = 10}) {
    return n1 + n2;
  }

  print(
      "Chamando função de soma com parametros default = ${somaDoublesDefaults(n1: 10)}");

  // #5
  // Parametros não nomeados e opcionais
  // ao invés de chaves entre os parametros usa-se colchetes
  // Parecido com os parametros obrigatórios, não são nomeados porém são opcionais
  // Precisam ser os ultimos parametros
  int somaIntOpcional([int n1 = 0, int n2 = 5]) {
    return n1 + n2;
  }

  print(
      "Chamando função de soma com parametros opcionais não nomeados = ${somaIntOpcional(5)}");

  // #6
  // Parametros misturados
  // Uma função usando vários tipos de parametros
  void parametrosMisturados(int numero, {required String nome, int? idade = 0}) {
    print("$numero, $nome, $idade");
  }
  parametrosMisturados(1, nome: "Rick");
}