abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Caminante {
  void caminar() => print('Puede caminar');
}

mixin class Nadador {
  void nadar() => print('Puede nadar');
}

mixin class Volador {
  void volar() => print('Puede volar');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Pato extends Ave with Nadador, Caminante, Volador {}

class Paloma extends Ave with Volador, Caminante {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final delfinAsesino = Delfin();
  delfinAsesino.nadar();

  final batman = Murcielago();
  batman.volar();

  final tiburonsin = Tiburon();
  tiburonsin.nadar();
}
