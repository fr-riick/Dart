
void main(List<String> args) {

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

  Map<String, int> profissoes = {
    "desenvolvedores" : 0,
    "estudantes" : 0,
    "dentistas" : 0
  };

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split("|");

    // if (dadosPacientes[2].toLowerCase() == 'desenvolvedor') {
    //   desenvolvedores++;
    // } else if (dadosPacientes[2].toLowerCase() == 'estudante') {
    //   estudantes++;
    // } else if (dadosPacientes[2].toLowerCase() == 'dentista') {
    //   dentistas++;
    // } else if (dadosPacientes[2].toLowerCase() == 'jornalista') {
    //   jornalistas++;
    // }

    if (dadosPaciente[2].toLowerCase() == "desenvolvedor") {
      profissoes["desenvolvedores"] = (profissoes["desenvolvedores"] ?? 0) + 1;
    } else if (dadosPaciente[2].toLowerCase() == "estudante") {
      profissoes["estudantes"] = (profissoes["estudantes"] ?? 0) + 1;
    } else if (dadosPaciente[2].toLowerCase() == "dentista") {
      profissoes["dentistas"] = (profissoes["dentistas"] ?? 0) + 1;
    } 
  }
  print(profissoes["desenvolvedores"]);
  print(profissoes["estudantes"]);
  print(profissoes["dentistas"]);
  

  
  
}