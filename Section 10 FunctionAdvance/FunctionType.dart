//This is named fuction type (or alias name of String Function(String))
typedef Greet = String Function(String);
//Above can be represnted as String Greet (String name)
void main() {
  final sayHi = (name) => 'Hi, $name';

  welcome(sayHi, 'CJ');
}

void welcome(Greet greet, String name) {
  print(greet(name));
  print('Welcome to DART');
}
