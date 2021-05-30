class TeamAnimals {
  void sleep() => print('Buddy sleep');
  void eat() => print('Buddy eat');
}

//Class cat extends class TeamAnimals
class Cat extends TeamAnimals {
  void curlHair() => print('Umm...Curl!! Curl!!');
}

void main() {
  final animal = TeamAnimals();
  animal.eat();
  final cat = Cat();
  cat.curlHair();
  //Cat class instance can access any member of extended class
  cat.sleep();
}

//Output
// Buddy eat
// Umm...Curl!! Curl!!
// Buddy sleep
