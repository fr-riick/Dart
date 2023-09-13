// assert
// nao funciona em produçao, apenas em desenvolvimento
// primeiro parametro faz um teste, caso retorne true continua o programa, caso retorne false ele lança um erro
// segundo parametro posso customizar uma mensagem do erro
// Pode ser feito ja no construtor

// exemplo simples
// void main() {
//   var site = 'http/dart.com';
//   assert(site.contains('https'), 'deve conter o https');
// }

class Cliente {
  String? nome; 
  String? cpf;

  String? razaoSocial;
  String? cnpj;

  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  }) : assert((cpf != null) ? nome != null && razaoSocial == null && cnpj == null : true, 'Você enviou cpf junto com cnpj');

  @override
  String toString() {
    return 'Cliente(nome: $nome, cpf: $cpf, razaoSocial: $razaoSocial, cnpj: $cnpj)';
  }
}
