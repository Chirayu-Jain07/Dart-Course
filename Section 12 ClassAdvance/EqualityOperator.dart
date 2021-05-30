class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;
  // Operator Overload
  @override
  bool operator ==(covariant Point other) {
    if (other is Point) {
      return x == other.x && y == other.y;
    } else
      return false;
  }
}

void main() {
  print(Point(0, 0) == Point(0, 0)); //O/p : true
}
