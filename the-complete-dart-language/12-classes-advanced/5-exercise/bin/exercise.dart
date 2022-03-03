import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void printValues(Shape shape) {
  print('Area: ${shape.area}');
  print('Perimeter: ${shape.perimeter}');
}

void main(List<String> arguments) {
  final square = Square(7);
  printValues(square);

  final circle = Circle(12.5);
  printValues(circle);
}
