class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';

  /*@override
  bool operator ==(covariant Point other) {
    // is checked runtime type of object.
    if (other is Point) {
      return x == other.x && y == other.y;
    }

    return false;
  }
  */

  @override
  bool operator ==(covariant Point other) => x == other.x && y == other.y;
}

void main(List<String> arguments) {
  print(5 == 5);

  // Dart doesn't know how to compare instances of Point
  // We need to overload operator line:10
  print(Point(0, 0) == Point(0, 0));

  // When we add covariant keyword line:11
  // Compiler throw error when comparision not make sense
  // The argument type 'String' can't be assigned to the paramter type 'Point?'
  // print(Point(1, 1) == "abc");
}
