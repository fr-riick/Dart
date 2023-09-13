class Numero{

  int n; 

  Numero(this.n);

  Numero operator +(Numero numero2){
    return Numero(n + numero2.n);
  }
}