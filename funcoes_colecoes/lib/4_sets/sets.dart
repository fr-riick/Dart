
void main() {
  
  // Lista Convencional
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(3);
  numerosLista.add(2);
  numerosLista.add(1);
  numerosLista.add(3);
  numerosLista.add(2);
  numerosLista.add(null);
  print('printando a lista');
  print(numerosLista);

  // set
  // Não permite valores duplicados
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(3);
  numerosSet.add(2);
  numerosSet.add(1);
  numerosSet.add(3);
  numerosSet.add(2);
  numerosSet.add(null);
  print('printando o set');
  print(numerosSet);

  // também posso tranformar uma lista convenconal em um set
  print('printando a lista transformada em set');
  print(numerosLista.toSet());

  // métodos do set

  var numeros1 = {1, 2, 3, 4};
  var numeros2 = {3, 4, 6, 7};

  //.difference
  // verifica as diferenças do set pro set que foi passado como parametro
  print("Método .difference");
  print(numeros2.difference(numeros1));

  // .union
  // junta dois sets mas sem valores duplicados respeitando o set
  print("Método .union");
  print(numeros1.union(numeros2));

  // .intersection
  // pega os valores que são iguais nos dois sets
  print("Método .intersection");
  print(numeros1.intersection(numeros2));

  // .lookup
  // verifica se existe um valor no set
  // se existir retorna ele, se não retorna nulo
  print("Método .lookup");
  print(numeros1.lookup(3));
  
  // pra pegar um dado do set não é só colocar o indice entre chaves
  // precisa usar o .elementAt()

  print("Método .elementAt");
  print(numeros1.elementAt(2));

  
}