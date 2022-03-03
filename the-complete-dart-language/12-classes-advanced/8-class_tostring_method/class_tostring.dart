// It's very useful for debugging.
// Override it to define a string representation of your own classes.

main(List<String> args) {
  final list = [1, 2, 6, 8];
  print(list); // same as print(list.toString())

  final point = Point(11, 12);
  print(point);

  final pointList = [Point(3, 4), Point(5, 7)];
  print(pointList);
}

// If we want to implement it our own class
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';
}
