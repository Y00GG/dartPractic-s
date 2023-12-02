
abstract class Animal {}


abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Esta volando');
}

mixin Caminante {
  void caminar() => print('Esta caminando');
}

mixin Nadador {
  void nadar() => print('Esta nadando');
}


class Delfin extends Mamifero with Nadador {}
class Murcielafo extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}


void main(){
  
  final Tiburon tiburonMartillo = Tiburon();
  
  tiburonMartillo.nadar();
  
}
