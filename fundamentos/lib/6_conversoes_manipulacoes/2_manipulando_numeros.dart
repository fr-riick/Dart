
void main(){
  
  // isNegative
  // verifica se o valor é negativo
  final valor = -20;
  print(valor.isNegative ? "é negativo" : "não é negativo");
  
  // round
  // arredonda o valor pra o próximo valor e retorna inteiro
  final valorDouble = 10.65;
  print(valorDouble.round());
  // roundToDouble arredonda mas retorna um valor ainda double
  print(valorDouble.roundToDouble());

  // .parse
  // converte para inteiro
  var numStr = '30';
  var numInt = int.parse(numStr) + 2;
  print(numInt);

  //.tryParse
  // tenta converter para inteiro, caso não consiga retorna null
  var numStr2 = 'A';
  var numTryParse = int.tryParse(numStr2);
  print(numTryParse);
  
  // toStringAsFixed
  // arredonda e fica "x" casas decimais apenas
  // "x" é o valor que vc passar como parâmetro
  var preco = 50.3459;
  print(preco.toStringAsFixed(2));
  
}