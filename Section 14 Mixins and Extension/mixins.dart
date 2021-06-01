class Swimming {
  //In dart any class can be added as a mixin to another class using the with keyword
  void swim() => print('swimming');
}

mixin Breathing {
  //Mixins can't be instantiated
  void breathe() => print('breathing');
}

/* We can add mixin to share functionality in multiple classes without code duplication
  Mixins are good for defining behviours (or capabilities) , 
  Class can inherit those behavior in a more maitainable way 
  Mixins lead to SHALLOW class Hierarchies , Single inheritance leads to DEEP  class Hierarchies */

// DRAWBACK
/* Mixin can't be instantiated therefore no constructor can be made
  Mixin lead to name collision */

class Animal with Breathing {}

class Plant with Breathing {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {}
