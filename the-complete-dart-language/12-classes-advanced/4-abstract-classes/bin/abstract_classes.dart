import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double get area => side * side;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> arguments) {
  // final shape = Shape(); // abstract classes can't be instantiated.
  final square = Square(10);
  printArea(square);
  print(square);

  final circle = Circle(12.5);
  printArea(circle);
  print(circle);

  final shapes = [Square(2), Circle(12)];

  //shapes.forEach((shape) => printArea(shape));
  shapes.forEach(printArea);
}
