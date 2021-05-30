//Library for pi
import 'dart:math';

//abstract class with member variable and function
abstract class Shape {
  //Add a constructor, const due to immutable class
  const Shape();
  double get area;
  // Factory constructor
  // Use object instead of dynamic
  factory Shape.fromJson(Map<String, Object> json) {
    //  To hold the value of type json
    final type = json['type'];

    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('Invalid or  missing side property');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('Invalid or  missing radius property');
      default:
        throw UnimplementedError('Shape $type is not avaliable');
    }
  }
}

//Remember magic wond -- ctrl + .
//Class Square
class Square extends Shape {
  //Consturctor
  const Square(this.side);
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
  //List of shape
  final shapeJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 15.0,
    },
  ];
}
