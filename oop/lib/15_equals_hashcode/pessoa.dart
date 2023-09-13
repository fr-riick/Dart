// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {

  String nome;

  Pessoa({
    required this.nome,
  });

// método .equals quando precisar verificar algo que não está
// na mesma referencia de memória

// primeira maneira de implementar o equals:
// @override
//   bool operator == (Object other){
//     if(identical(this, other)) return true;

//   if(other is Pessoa){
//     if(other.nome == nome){
//       return true;
//     }else {
//       return false;
//     }
//   }else{ 
//     return false;
//     }
//   }

// Segunda maneira mais simples
// @override
//   bool operator == (Object other){
//     if(identical(this, other)) return true;

// var isEquals = false;

//   if(other is Pessoa){
//     if(other.nome == nome){
//       isEquals = true;
//     }
//   }
//   return isEquals;
//   }

// Mais simples ainda
// @override
// bool operator == (Object other){
//   if(identical(this, other)) return true;

//   return other is Pessoa
//   && other.nome == nome;
// }

//   // precisa implementar o metodo hashcode pra ficar igual o hashcode tbm
//   // pois alguns métodos comparam pelo hashcode, e n pelo equals.
//   @override
//   int get hashCode {
//     return nome.hashCode;
//   }


// e também com a extensão data class generator
// é só ir na lampada e clicar em generate equality
  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome;
  }

  @override
  int get hashCode => nome.hashCode;

  // método toString, vc pode retornar do jeito que quiser os atributos
  // também pode ser implementado pelo plugin la na lampada
  @override
  String toString() {
    return '''
Pessoa
  nome: $nome
  ''';
  }
}
