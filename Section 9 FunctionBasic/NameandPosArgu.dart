void main() {
  //Postional agrument desc('Chirayu' , 20) && named argument desc(name : 'Chirayu', age : 20)
  final person = desc(name: 'Chirayu', age: 20);
  print(person);
}

// we add {} so the fuction can understand named argument
String desc({String name, int age}) {
  return 'Hi, $name your present age is $age';
}
//However this code will give error as null safety is on
