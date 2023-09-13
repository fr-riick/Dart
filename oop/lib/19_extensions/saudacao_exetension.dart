 // extension permite que eu crie meu proprio metodo de extension
 // quando a gente pega uma string por exemplo e apertao . temos varias opçoes prontas
 // como substring, isEmpty, toLowerCase
 // Nesse caso a gente pode criar a nossa propria personalizada.

extension Saudacao on String {
  String saudacao(){
    return 'Olá ${capsLock()}, bem vindo!';
  }
  String capsLock () {
    if(isEmpty){
      return this;
    } else {
      return this[0].toUpperCase() + substring(1);
    }
    
  }
}