//Library for pi
import 'dart:math';

//abstract class with member variable and function
abstract class Shape {
  double get area;
  double get perimeter;
  void printValues() {
    print('area is $area');
    print('perimeter is $perimeter');
  }
}

//Remember magic wond -- ctrl + .
//Class Square
class Square extends Shape {
  //Consturctor
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  //List of shape
  final shape = [
    Square(10),
    Circle(15),
  ];
  //Print all values
  shape.forEach((shape) => shape.printValues());
}
