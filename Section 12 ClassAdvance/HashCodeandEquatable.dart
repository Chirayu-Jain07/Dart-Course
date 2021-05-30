import 'package:equatable/equatable.dart';

class Point extends Equatable {
  const Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() => 'Point($x, $y)';

  Point operator +(Point add) {
    return Point(x + add.x, y + add.y);
  }

  Point operator *(int mul) {
    return Point(x * mul, y * mul);
  }

  @override
  List<Object> get props => [x, y];

  @override
  bool get stringify => true;
}

void main() {
  print(Point(1, 1) == Point(2, 0));

  print(Point(2, 1) * 5);
}

// Output
// false
// Point(10, 5)
