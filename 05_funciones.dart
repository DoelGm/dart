void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(1, 4)}');
  print(greetPerson(name: 'rafael', message: 'hi'));
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
} // se agrega []dentro de los parametros de la funcion para decir que b es una variable opcional

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message $name';
}
