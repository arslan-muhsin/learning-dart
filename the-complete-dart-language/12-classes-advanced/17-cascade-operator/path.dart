// Used to modify class instances with mutable state.

// Cascade operator is just syntactic sugar
// (makes it easier to call multiple methods on the same object)

import 'dart:math';

class ClosedPath {
  List<Point> _points = [];

  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point point) {
    _points.add(point);
  }
}

main(List<String> args) {
  // square shape
  final path = ClosedPath();
  path.moveTo(Point(0, 0));
  path.moveTo(Point(2, 0));
  path.moveTo(Point(2, 2));
  path.moveTo(Point(0, 2));
  path.moveTo(Point(0, 0));

  // cascade operator
  final pathWithCascade = ClosedPath()
    ..moveTo(Point(0, 0))
    ..moveTo(Point(2, 0))
    ..moveTo(Point(2, 2))
    ..moveTo(Point(0, 2))
    ..moveTo(Point(0, 0));

  print(pathWithCascade);
}
