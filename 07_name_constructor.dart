void main() {
  // simulacion de un HTTPS

  final Map<String, dynamic> rawJson = {
    'name': 'Thor2',
    'power': 'Truenos',
    'isAlive': false
  };

  final Hero thor = Hero(isAlive: true, name: 'Thor', power: 'Truenos');
  final Hero thor2 = Hero.fromJason(rawJson);

  print(thor);
  print(thor2);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJason(Map<String, dynamic> json)
      : name = json['name'] ?? 'No se encuntra en Nombre ',
        power = json['power'] ?? 'No se encuntra en Poder',
        isAlive = json['isAlive'] ?? 'No se encuntra en si esta vivo';

  @override
  String toString() {
    return 'El heroe es: $name su poder es: $power esta vivo: ${isAlive ? 'SI' : 'NO'}';
  }
}
