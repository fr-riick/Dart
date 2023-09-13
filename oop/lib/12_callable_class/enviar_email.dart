class EnviarEmail{
  // callable class
  // serve pra vc poder chamar essa clase como se fosse uma função
  // obrigatoriamente tem que ter a assinatura call 
  bool call(String email){
    print('Chamando método call');
    return enviar(email);
  }

  bool enviar(String email){
    print('chamando método enviar');
    print('email enviado para: $email');
    return true;
  }
}