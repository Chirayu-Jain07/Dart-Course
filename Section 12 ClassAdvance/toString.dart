class Point {
  Point(this.x, this.y);
  final int x;
  final int y;
  @override
  String toString() => 'Point($x,$y)';
}

void main() {
  print(Point(1, 3));
}

//  print(Point(1, 3)); --> Instance of 'Point'
// O/P : Point(1,3)
