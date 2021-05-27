void main() {
  const name = 'Chirayu';
  const age = 20;
  //Use a variable to hold the string value of function
  final person = describeMe(name, age);
  print(person);
}

// Return type is String
String describeMe(String name, int age) {
  return 'Hi, $name your present age is $age';
}
