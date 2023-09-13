import 'package:oop/12_callable_class/enviar_email.dart';

void main(List<String> args) {
  var enviarEmail = EnviarEmail();
  // ao invés disso:
  // enviarEmail.enviar('teste@123.com');
  // usa assim:
  enviarEmail('teste@123.com');
}