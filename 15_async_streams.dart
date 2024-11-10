void main() {
  enumNumbers().listen((value) {
    print('El flujo de datos es: $value');
  });
}

Stream<int> enumNumbers() async* {
  final listado = [1, 2, 3, 4, 5];

  for (int i in listado) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
