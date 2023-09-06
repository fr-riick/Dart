void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  final pessoasSemDuplicado = pessoas.toSet().map((e) => e.split('|')).toList();
  print('');
  print("1 - Remova os pacientes duplicados e apresente a nova lista");
  for (var pessoa in pessoasSemDuplicado) {
    print(pessoa);
  }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  final mapSexo = <String, List<String>>{};
  for (var pessoa in pessoasSemDuplicado) {
    final sexo = pessoa[2].toLowerCase();
    final listaMasculino = mapSexo["M"] ?? <String>[];
    final listaFeminino = mapSexo["F"] ?? <String>[];

    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    }
    if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }
    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }

  print('');
  print(
      "2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas");
  final masculinos = mapSexo['M'] ?? <String>[];
  final femininos = mapSexo['F'] ?? <String>[];
  print("Masculinos (${masculinos.length})");
  print(masculinos);
  print("Femininos (${femininos.length})");
  print(femininos);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  final pessoasMaiores18 = pessoasSemDuplicado.where((p) {
    final idade = int.tryParse(p[1]) ?? 0;
    return idade > 18;
  }).toList();

  print('');
  print(
      "3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome");
  for (var pessoa in pessoasMaiores18) {
    print('Nome: ${pessoa[0]}, idade: ${pessoa[1]}');
  }

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  final listaOrdenada = [...pessoasSemDuplicado];
  listaOrdenada.sort((p1, p2) {
    final idadeP1 = int.tryParse(p1[1]) ?? 0;
    final idadeP2 = int.tryParse(p2[1]) ?? 0;

    return idadeP1.compareTo(idadeP2);
  });
  final pessoaMaisVelha = listaOrdenada.last;
  print('');
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  print(
      'A pessoa mais velha é: ${pessoaMaisVelha[0]} e sua idade é: ${pessoaMaisVelha[1]}');
}