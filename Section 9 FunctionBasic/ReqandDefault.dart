void main() {
  final person = desc(name: 'Chirayu', age: 20);
  print(person);
}

// we add {} so the fuction can understand named argument
//desc({String name = '', int age = 0}) is default argu ,  desc({required String name , required int age = 0}) is required argu
String desc({required String name, required int age}) {
  return 'Hi, $name your present age is $age';
}
//However this code will give error as null safety is on
