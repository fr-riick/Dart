// associação é quando alguem tem algo
// exemplo, pessoa tem um endereço, tem um cpf, tem um telefone
class Pessoa {
  String? nome; 

  // Composição
  // Quando um atributo de associação é obrigatório é uma composição
  Endereco endereco = Endereco();
  Cpf cpf = Cpf();

  // Agregação
  // Quando o atributo não é obrigatório é uma agregação
  Telefone? telefone;
}




class Endereco{}
class Cpf{}
class Telefone{}