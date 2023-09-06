
//  Variáveis de nível superior, estão fora da função principal, soltas para todo o arquivo usar
String upperVariable = "Variavel de nivel superior";

void main(){

// variaveis tipadas
String text = 'text';
print("String é um texto = $text");

int integer = 1;
print("int é um número inteiro = $integer");

double decimal = 2.1;
print("double é um número decimal = $decimal");

bool bollean = true;
print("bool é uma expressão lógica, true or false = $bollean");

// se não especificar o tipo o proprio dart tipa automatico
var name = 'gustavo';
print("Se não especificar o tipo, o proprio dart tipa automático (a variável name é uma ${name.runtimeType})");

// dynamic and Object
// podem ser qualquer tipo
dynamic all = 1.2;
all = 'texto';
print("dynamic pode ser qualquer coisa (all2 = ${all.runtimeType})");

Object all2 = 1;
all2 = 'oi';
print("Object tbm pode ser qualquer tipo (all2 = ${all2.runtimeType})");

// Variáves locais não precisam ser inicializadas na sua criação. 
// Devem receber um valor depois de serem inicializadas, caso contrário vai retornar um erro pois não podem ser nulas
String test;
test = "teste";
print("A variável teste não foi inicializada na criação, mas atribui valor a ela depois (test = $test)");


}