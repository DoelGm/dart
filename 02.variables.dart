void main() {
  final String pokemon = 'Pikachu';

  final int hp = 60;

  final bool isAlive = true;

  final List<String> habilidades = ['thunder', 'pika'];

  final sprites = <String>['pikachu/front.png'];

  // dynamic == null

  dynamic errorMessage = 'Hola';

  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $habilidades
  $sprites 
  $errorMessage
  """);
}
