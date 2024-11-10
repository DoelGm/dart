void main() {
  // mapas en dart

  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'islive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  print(pokemon);
  print('Name ${pokemon['name']}');
  print('sprites ${pokemon['sprites']}');

  print('sprites ${pokemon['sprites'][1]}');
  print('sprites ${pokemon['sprites'][2]}');
}
