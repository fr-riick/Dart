
void main() {

  final primeiroNome = 'Bredy';
  final segundoNome = 'Jhonson';
  final nome = 'Gustavo Enrique';
  
  
  // Interpolação de Strings
  // Coloca o símbolo de Cifrão($) antes da variavel para interpolar strings
  // e outras coisas simples como uma soma, assim não precisa concatenar as
  // strings. 
  print('O nome completo é: $primeiroNome $segundoNome');
  // caso vc vá colocar a variavel junto com um método vc acrescenta chaves
  // junto ao cifrão, exemplo: 
  print('O nome é ${nome.toUpperCase()}');
  
  // Substring
  // Pega a String a partir do caractere informado
  print(nome.substring(8));
  // Você pode informar o caractere inicial e final, como no exemplo a seguir
  print(nome.substring(0, 7));

  // startsWith endsWith
  // Verifica se a String começa ou termina com o parâmetro indicado
  print(nome.toLowerCase().startsWith('gus'));
  print(nome.endsWith('que'));

  // contains
  // verifica se a string contém o parâmetro em qualquer lugar dela
  print(nome.contains('Enrique'));

  // split
  // quebra uma string por um caractere passado como parâmetro e transforma
  // em uma lista
  var paciente = 'Gustavo Enrique|24|Estudante';
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  var idadePaciente = dadosPaciente[1];
  print(idadePaciente);

  // exemplo usando uma lista e metodos de lista

  print('--------Pessoas--------');
  var pessoas = [
    'Gustavo Enrique Fernandes|24|Estudante',
    'Mariana Fernandes Freitas|26|Analista',
    'Carlos Da Silva|36|Empresário'
  ];

  for (var pessoa in pessoas) {
    var dadosPessoas = pessoa.split('|');
    var nomePessoa = dadosPessoas[0].split(' ');
    print('O último nome de ${dadosPessoas[0]} é: ${nomePessoa.last}');
  }
}