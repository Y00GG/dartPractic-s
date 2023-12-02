void main(){
  
  print(greetEveryone());
  print(addTwoNumbers(25,56));
  
  print( greetPerson( name: 'Alvaro', message: 'Hi,' ) );
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers( int a,int b ) => a + b;

int addTwoNumbersOptional( int a, [ int b = 0]) {
  
  //b = b ?? 0;por si no se el valor de b
  //b ??= 0; esto es igual a lo de arriba
  
  return a + b;
}


String greetPerson( { required String name, String message = 'Hola,'} ){
  return '$message $name';
}