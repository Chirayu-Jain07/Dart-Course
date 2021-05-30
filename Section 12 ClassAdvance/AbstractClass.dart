//Library for pi
import 'dart:math';

//abstract class
abstract class Shape {
  double get area;
}

class Square extends Shape {
  //Consturctor
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final Shape square = Square(10);
  print(square);
  final Shape circle = Circle(20);
  print(circle);
}
