void main() async {
  print('Inicio del Programa');
  try {
    final obtengo = await httpsGet('https:GET/Name');
    print(obtengo);
  } on Exception catch (err) {
    print('Tenemos una Excepcion: $err');
  } catch (err) {
    print('Error: $err');
  } finally {
    print('Fin del try y el catch');
  }
  print('Fin del programa del Programa');
}

Future<String> httpsGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('Error en la peticion');
  // throw 'Error personalizado';
  //return 'Hola';
}
