void main(){

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  print(caixa.alturaItem());
}

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