void main() {
  //=> is fat arrow notation.
  //sayHi is reference to our anonymous func.
  final sayHi = (name) => 'Hi, $name';
  print(sayHi('Chirayu'));
}
