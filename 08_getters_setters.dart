void main() {
  final Cuadrado figura = Cuadrado(side: 10);

  figura.setSide = 5;

  print('El área es de: ${figura.area}');
}

class Cuadrado {
  double _side; // para hacer uan variable privada se uan el _

  Cuadrado({required side})
      : assert(side >= 0, 'El side debe de ser mayor o igual a 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set setSide(double value) {
    print('Nuevo valor asigando $value');
    if (value < 0) throw 'El valor es menor a 0';

    _side = value;
  }

  double calcularArea() {
    return _side * _side;
  }
}
