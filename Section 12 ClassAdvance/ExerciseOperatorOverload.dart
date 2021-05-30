// Class Start
class Point {
  const Point(this.x, this.y);
  // Value of x coordinate
  final int x;
  // Value of y coordinate
  final int y;

  @override
  // overload equality opearator
  String toString() => 'Point($x, $y)';

  // overload addition opearator
  Point operator +(Point add) {
    return Point(x + add.x, y + add.y);
  }

  // overload multipication opearator
  Point operator *(int mul) {
    return Point(x * mul, y * mul);
  }
}

void main() {
  print(Point(1, 1) + Point(2, 0));

  print(Point(2, 1) * 5);

  // Output
  //Point(3, 1)
  //Point(10, 5)
}
