void main() {
  final Hero batman = Hero(name: 'Batman', power: 'Dinero');

  print(batman.toString());
  print(batman.name);
  print(batman.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Sin poder'});
  //Hero (String pName, String pPower)
  //  : name = pName,
  //    power = pPower;

  @override
  String toString() {
    return '$name - $power';
  }
}
