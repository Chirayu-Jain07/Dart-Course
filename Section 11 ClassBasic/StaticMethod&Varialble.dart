class Strings {
  static String welcome = 'Welcome';
  static String signIn = 'Sign In ';
  static String greet(String name) => 'Hi $name';
}

void main() {
  print(Strings.welcome);
  print(Strings.greet('CJ'));
}
// Static class varialble belog to the class itself . Not to any specific instance
// Output
// Welcome
// Hi CJ
