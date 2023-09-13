import 'package:oop/05_heranca_covariante/banana.dart';
import 'package:oop/05_heranca_covariante/macaco.dart';

void main(){
 var macaco = Macaco();
  
  macaco.comer(Banana(tipo: 'nanica'));
}