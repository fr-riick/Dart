void main (){
  var diaDaSemana = 1;
  String diaDaSemanaStr;

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
    case 2:
      diaDaSemanaStr = 'Segunda-feira';
      break;
    default:
      diaDaSemanaStr = 'Não identificado';
  }

  print(diaDaSemanaStr);
}