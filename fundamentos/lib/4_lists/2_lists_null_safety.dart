
void main(){

  // Nesses casos a lista pode ser nula mas os itens não
  List<String>? nullList;
  print(nullList);
  // criando uma lista que pode ser nula vazia
  List? nullList2 = <int> [];
  nullList2 = null;
  print(nullList2);

  // Nesses casos os itens da lista podem ser nulos mas as listas não
  List<String?> nullItems = ['Rick', null, 'Enrique', 'Bredy', null];
  print(nullItems);
  // criando uma lista que os itens podem ser nulos vazia
  var nullItems1 = <String?>[];
  print(nullItems1);

  // Nesse caso tanto a lista como os itens da lista podem ser nulos
  List<String?>? allNull = [];
  print(allNull);
}