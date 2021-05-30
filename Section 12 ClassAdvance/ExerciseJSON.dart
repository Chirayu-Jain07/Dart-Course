// Class Start
class Person {
  // Constructor
  Person({required this.name, required this.age});
  // Name var
  final String name;
  // Age var
  final int age;
  // Factory constructor
  // Map of string  and Object type pass
  factory Person.fromJson(Map<String, Object> json) {
    // Hold the value of name form json
    final name = json['name'];
    // Hold the value of age form json
    final age = json['age'];
    // Checking for valid type
    if (name is String && age is int) {
      return Person(name: name, age: age);
    }
    // throw an error
    throw UnimplementedError('Wrong name or age');
  }
  // To reset a json type
  Map<String, Object> toJson() => {
        'name': name,
        'age': age,
      };
}

void main() {
  final person = Person.fromJson({
    'name': 'Chirayu',
    'age': 20,
  });
  final json = person.toJson();
  print(json);
}

// Output : {name: Chirayu, age: 20}
