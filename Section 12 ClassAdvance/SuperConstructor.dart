class TeamAnimals {
  const TeamAnimals({required this.age});
  final age;
  void animalAge() => print(age);
  void sleep() => print('Buddy sleep');
  void eat() => print('Buddy eat');
}

//Class cat extends class TeamAnimals
class Cat extends TeamAnimals {
  //We have a super class constuctor
  Cat() : super(age: 10);

  void curlHair() => print('Umm...Curl!! Curl!!');
}

void main() {
  final animal = TeamAnimals(age: 12);
  animal.eat();
  animal.animalAge();
  final cat = Cat();
  cat.curlHair();
  //Cat class instance can access any member of extended class
  cat.sleep();
  cat.animalAge();
}

//Output
// Buddy eat
// 12
// Umm...Curl!! Curl!!
// Buddy sleep
// 10
