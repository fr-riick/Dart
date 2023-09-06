void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  // Resposta:
  var pessoasComMais20Anos = [];
  var desenvolvedores = 0;
  var estudantes = 0;
  var dentistas = 0;
  var jornalistas = 0;
  var nomePaulistas = [];

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');

    // 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
    var idade = int.tryParse(dadosPacientes[1]) ?? 0;
    if (idade > 20) {
      pessoasComMais20Anos.add([dadosPacientes[0], dadosPacientes[1]]);
    }

    // 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
    if (dadosPacientes[2].toLowerCase() == 'desenvolvedor') {
      desenvolvedores++;
    } else if (dadosPacientes[2].toLowerCase() == 'estudante') {
      estudantes++;
    } else if (dadosPacientes[2].toLowerCase() == 'dentista') {
      dentistas++;
    } else if (dadosPacientes[2].toLowerCase() == 'jornalista') {
      jornalistas++;
    }

    // 3 - Apresente a quantidade de pacientes que moram em SP
    if (dadosPacientes[3].toUpperCase() == 'SP') {
      nomePaulistas.add(dadosPacientes[0]);

    }
  }

  // Prints
  print('Pessoas com mais de 20 anos:');
  for (var pessoa in pessoasComMais20Anos) {
    print('Nome: ${pessoa[0]} | Idade: ${pessoa[1]}');
  }

  print('---------------------------');
  print('Quantidades de pacientes:');
  print('Desenvolvedores: $desenvolvedores');
  print('Estudantes: $estudantes');
  print('Dentistas: $dentistas');
  print('Jornalistas: $jornalistas');

  print('---------------------------');
  print('Moram ${nomePaulistas.length} pacientes em São Paulo.');
  for (var element in nomePaulistas) {
    print('Nome: $element');
  }

}