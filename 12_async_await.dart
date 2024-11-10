void main() async {
  print('Inicio del Programa');
  try {
    final obtengo = await httpsGet('https:GET/Name');
    print(obtengo);
  } catch (err) {
    print('Error: $err');
  }
  print('Fin del programa del Programa');
}

Future<String> httpsGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error personalizado';
  //return 'Hola';
}
