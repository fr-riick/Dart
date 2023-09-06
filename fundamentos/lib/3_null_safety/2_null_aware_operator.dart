
String? nome;
void main(){

  var sobrenome = ' Enrique';
  // forma normal de se fazer
  // var nomeCompleto = nome != null ? nome! + 'Enrique' : 'Gustavo Enrique';

  // forma de se fazer com o aware operator
  // nome = "Bredy";
  var nomeCompleto = (nome ?? "Gustavo") + sobrenome;
  // as duas interrogações após o nome da variavel identificam se o valor é nulo, caso seja, ele atribui "Gustavo" a variavel.
  print(nomeCompleto);


  // outro exemplo
  int? numero;
  print((numero ?? 3));
}