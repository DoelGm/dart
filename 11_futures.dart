void main() {
  print('Inicio del Programa');

  httpsGet('https:GET/Name').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
}

Future<String> httpsGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Falla en la peticon https';
    // return 'Peticion GET';
  });
}
