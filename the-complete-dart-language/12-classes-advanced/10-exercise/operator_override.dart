class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';

  Point operator +(Point otherPoint) {
    var resultX = x + otherPoint.x;
    var resultY = y + otherPoint.y;

    return Point(resultX, resultY);
  }

  Point operator *(int multiplier) {
    var resultX = x * multiplier;
    var resultY = y * multiplier;

    return Point(resultX, resultY);
  }
}

main(List<String> args) {
  print(Point(1, 1) + Point(2, 0));
  print(Point(2, 1) * 5);
}
