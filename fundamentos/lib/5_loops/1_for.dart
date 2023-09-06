
void main(){

  var numbers = List.generate(3, (index) => index);
  var names = ['Rick', 'Gustavo', 'Bredy'];

  // imprimindo o array de numeros com o for convencional
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i] + 1);
  }

  // imprimindo o array de nomes com o for-in
  for (var name in names) {
    print(name);
  }
}