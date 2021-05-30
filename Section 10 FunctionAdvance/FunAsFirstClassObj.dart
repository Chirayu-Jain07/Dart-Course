void main() {
  final sayHi = (name) => 'Hi, $name';
  //welcome function call sayHi and pass srting argument
  welcome(sayHi, 'CJ');
}

// greet is argu , this argu is fuction which take (String) argu and return String
void welcome(String Function(String) greet, String name) {
  //Now we pass name as argument to greet
  print(greet(name));
  print('Welcome to DART');
}
