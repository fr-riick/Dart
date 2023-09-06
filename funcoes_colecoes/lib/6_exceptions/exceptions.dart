void main(List<String> args) {

  var idade = "28 anos";
  
  // tratamento de exceções com try-catch
  try {
    int.parse(idade);
  } catch (erro) {
    print("Erro ao converter idade");
  }

  // try-catch usando varios catchs
  // nesse caso coloco um catch exclusivo pra excessões de formatação e
  // um catch para qualquer outro tipo de exceção
  // OBS: sempre colocar as exceções específicas primeiro
  var idade2 = "28";
  String? nome;

  try {
    // Pode forçar uma exceção também, como no exemplo abaixo
    if (idade2 == "29") {
      throw Exception();
    }

    int.parse(idade2);
    print(idade2);
    nome!.toLowerCase();
  } on FormatException {
    // Se a exceção for específica e não precisar usar as variaveis de erro
    // não é necessário criá-las como nesse exemplo do FormatException
    print("Erro ao converter idade");
  } on TypeError catch (e, s) {
    print("Type Error");
    // tem dois tipos de exceções para apresentar o erro
    // (erro "e") primeiro parametro é mais resumido
    // (StackTrace "s") o segundo é mais detalhado
    print(e);
    print(s);
  } on Exception {
    print("Erro idade == 28");
  } catch (e) {
    print("Erro ao executar o programa");
    // finally sempre vai ser executado, tendo exceção ou não
  } finally {
    print("finally sempre é executado");
  }
}