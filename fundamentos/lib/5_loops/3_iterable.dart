
void main() {

  // OBS
  // Os métodos iterable transformam em iterable e não mais em listas,
  // por isso em alguns casos é necessario o toList() para converter de volta pra 
  // list e poder usar os métodos do List.

  var numbers = List.generate(5, (index) => index);

  // pular o 3 sem método iterable
  for (var i = 0; i < numbers.length; i++) {
    if (i == 3) {
      continue;
    }
    print(numbers[i]);
  }

  // usando o método where
  // where para buscar algo na lista de acordo com a função pré determinada
  // forEach é um método que percorre a lista, parecido com o for-in só que é um método.
  print("metodo where");
  numbers
  .where((element) => element != 3)
  .forEach((element) => print(element));
  print('-------------------------------------');

  // takeWhile: faça até...
  print("metodo take while");
  var numbersBefore3 = numbers
  .takeWhile((value) => value < 4)
  .where((element) => element != 2)
  .toList();

  print(numbersBefore3);
  print('-------------------------------------');

  // skipWhile: mesma coisa do takeWhile porem ele skipa a condiçao ao inves de ir até ela
  // fiz esse sem o toList() para ver que fica entre parenteses no print, ent n temos
  // os metodos da list e sim do iterable nessa variavel
  print("metodo skip while");
  var numbersAfter3 = numbers
  .skipWhile((value) => value < 3);
  print(numbersAfter3);
  print('-------------------------------------');

  // exemplo com Strings do take e skip While com strings
  var names = ['Rick', 'Gustavo', 'Bredy', 'carlos'];

  print("take while com Strings");
  print(names
  .takeWhile((value) => value != 'Bredy'));
  print('-------------------------------------');

  print("skip while com Strings");
  print(names
  .skipWhile((element) => element != 'Bredy'));
  print('-------------------------------------');

  // .map
  // retorna uma lista de outra lista
  // nesse caso pegamos uma lista de int e transformamos em uma lista de string com o
  // # antes de cada número
  print("metodo map");
  var numbersList = numbers
  .map((value) => '#$value')
  .toList();
  print(numbersList);

}