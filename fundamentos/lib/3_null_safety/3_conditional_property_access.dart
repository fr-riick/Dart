
String? nomeCompleto;
void main() {
  
// a interrogação após o nome da variável serve para verificar se o valor é nulo, caso não seja, ele executa o método
// caso seja, ele retorna null.
print(nomeCompleto?.toUpperCase());

// fazendo com if convencional
if (nomeCompleto != null) {
  print(nomeCompleto!.toUpperCase());
} else {
  print('Nome não preenchido no if convencional');
}

// nesse caso juntamos com o aware operator para que retorne uma frase caso o valor seja nulo.
print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido!');
}