
void main(){

  final caixa = Caixa();
  caixa.adicionar(Bola());
  print(caixa.alturaItem());
  print(caixa.getItem());

}



// tipos genericos, é quando vc cria uma variavel que pode ser vários tipos
// nesse exemplo a classe Caixa tem uma variavel chamada I, ela pode ser qualquer tipo que extenda de Item
// Normalmente tipos genéricos são declarados como uma letra maiuscula
class Caixa<I extends Item> {

  I? _item;

  void adicionar (I item){
    _item = item;
  }

  I? getItem(){
    return _item;
  }

  double alturaItem(){
    return _item?.altura() ?? 0;
  }
}




abstract class Item {
  double altura();
}


class Bola extends Item{
  @override
  double altura() {
    return 20.0;
  }
}

class Boneca extends Item{
  @override
  double altura() {
    return 40.0;
  }
}

class Telefone extends Item{
  @override
  double altura() {
    return 14.0;
  }
}