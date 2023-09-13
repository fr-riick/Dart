String? nome;
void main(List<String> args) {
  // alguns operadores mais diferentes
  // = -= /= %= >>= ^=
  // += *= ~/= <<= &= |=

  var numero = 1;
  numero += 2;
  print(numero);

  nome ??= 'rick';
  print(nome);
}
