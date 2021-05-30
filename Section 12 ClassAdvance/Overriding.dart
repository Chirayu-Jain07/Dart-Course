class Animal {
  void sleep() => print('class Animal : sleep');
}

class Dog extends Animal {
  void bark() => print('bark!!');
  //this annotation define I intendely done this overriding of function
  @override
  //Method Overriding
  void sleep() {
    super.sleep();
    print('class Dog : Dog sleep');
  }
}

void main() {
  final animal = Animal();
  animal.sleep();
  final dog = Dog();
  dog.sleep();
}

//Output
// class Animal : sleep
// class Animal : sleep
// class Dog : Dog sleep
