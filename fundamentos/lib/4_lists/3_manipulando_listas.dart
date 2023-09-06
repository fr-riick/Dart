void main(){

  final nomes = ['Rick', 'Bredy', 'João'];

  // Método add: adiciona no final da lista
  nomes.add('Carlos');
  print(nomes);

  // Método addAll : adiciona todos os itens de uma lista em outra
  print('-------------------------------------');
  print('Adicionando uma lista na lista nomes');
  nomes.addAll(['Rick2', 'Bredy2', 'João2']);
  print(nomes);

  // Método insert: adiciona novo valor em um indice específico
  nomes.insert(0, 'Gustavo');
  print('-------------------------------------');
  print('Adicionando Gustavo no indice do Rick');
  print(nomes);
  
  // Método remove pra remover um item
  print('-------------------------------------');
  print('Removendo Gustavo');
  nomes.remove('Gustavo');
  print(nomes);
  
  // Método removeWhere: passa por todos os itens da lista e remove todos os que retornarem true da funçao
  print('-------------------------------------');
  print('Removendo Carlos pelo removeWhere');
  nomes.removeWhere((nome) => nome.toLowerCase().startsWith('c'));
  print(nomes);

  // Método first e last
  print('-------------------------------------');
  print('Método first e last: serve pra pegar o primeiro e ultimo item de uma lista');
  print('[${nomes.first} e ${nomes.last}]');

  // Método Fold
  print('-------------------------------------');
  print('Método fold: Serve pra fazer algum calculo com os itens da lista');
  var numInteiros = [1, 2, 3, 4];
  // o 0 é o valor inicial do cálculo
  // o previos value é quanto o valor inicial ta valendo no momento atual
  // o element é cada elemento da lista
  print(numInteiros.fold<int>(0, (previousValue, element) => previousValue + element));

  // Spread Operator (...): funciona como um add all, porém pode colocar uma lista dentro da outra durante a criação dessa nova lista
  print('-------------------------------------');
  print('Adicionando uma lista na outra com spread operator (...)');
  var listNumerosSpread = [4, 5, 6];
  var listNumerosSpread2 = [1, 2, 3, ...listNumerosSpread];
  print(listNumerosSpread2);

  // Método Generate: para gerar listas
  print('-------------------------------------');
  print('Gerando uma lista com metodo generate');
  var numeros = List.generate(10, (index) => "#$index");
  print(numeros);

  


}