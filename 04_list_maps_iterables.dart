void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 6, 6, 7, 7, 8, 9, 10];

  print('Lista original: $numbers');
  print('Tamaño de la lista: ${numbers.length}');
  print('index 0 : ${numbers[0]}');
  print('primer numero de la lista: ${numbers.first}');
  print('ultimo numero de la lista: ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;

  print('Iterable: ${reversedNumbers}'); // los iterables tiene ()
  print('List: ${reversedNumbers.toList()}'); // las listas tiene []
  print(
      'Set: ${reversedNumbers.toSet()}'); // los set tiene {} y eliminan los numeros repetidos

  final numberGreaterThan5 = numbers.where((int num) {
    return num > 5; // true
  });

  print('>5 Iterable: ${numberGreaterThan5}'); // los iterables tiene ()
  print('>5 Set: ${numberGreaterThan5.toSet()}'); // las listas tiene []
}
