//  TYPE SAFETY is done by const. parameter
class Person {
  // Constr. with required parameter list
  Person({
    required this.name,
    required this.age,
    required this.height,
  });
  // person name : mutable
  final String name;
  // person nageame : mutable
  final int age;
  // person height : mutable
  final double height;
  // Method to desc. a person
  void PersonDescription() {
    print('My name is $name my age is $age I\'m ${height}m long ');
  }
}

void main() {
  // Class instance 1 this help in type safety for typo
  final person1 = Person(name: 'Chirayu Jain', age: 20, height: 1.36);
  // Class instance 2
  final person2 = Person(name: 'Rohit Jain', age: 30, height: 1.20);
  // Instance method call
  person1.PersonDescription();
  // Instance method call
  person2.PersonDescription();
}

// Output
// My name is Chirayu Jain my age is 20 I'm 1.36m long
// My name is Rohit Jain my age is 30 I'm 1.2m long
