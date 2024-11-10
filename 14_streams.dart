void main() {
  enumNumbers().listen((value) {
    print('El flujo de datos es: $value');
  });
}

Stream<int> enumNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(6);
}
