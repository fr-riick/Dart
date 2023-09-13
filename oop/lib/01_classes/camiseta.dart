class Camiseta {
  // Caracteristicas / Atributos
  // public
  String? tamanho;
  String? marca;
  String? material;

  // private
  // é só colocar o _ antes do nome do atributo
  String? _cor;
  String? _regata;

  // Comportamentos / Métodos
  String tipoDeLavagem() {
    if (material != null) {
      if (material == 'Nylon') {
        return 'Não pode lavar na máquina';
      } else {
        return 'Pode lavar na máquina';
      }
    } else {
      return 'Material não identificado';
    }
  }

  // atributos e métodos de classe
  // static
  // em teoria não pode ser modificado
  // não é necessário criar uma instancia dele pra ser acessado em outras classes
  // na grande maioria das vezes ele deve ser constante também
  // pois se for alterado em um lugar altera em tudo

  // atributo:
  static const String nome = 'Camiseta';
  // Método
  static recuperarNome() {
    print(nome);
  }

  // Modificadores de acesso
  // Temos public e private, como nos exemplos la nos atributos
  // ai precisamos criar um get e set pra acessar atributo privado

  // Getter
  String? get regata => _regata;
  String? get cor => _cor;

  // Setter
  set cor(String? cor) => _cor = cor;
  set regata(String? reg) => _regata = reg;
  
}
