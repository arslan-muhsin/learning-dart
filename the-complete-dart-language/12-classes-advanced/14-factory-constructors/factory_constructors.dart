// Factory constructors are useful:
// 1. Implement a constructor that doesn't always create a new instance of its class.
// 2. Initialize a final variable using logic that can't be handled in the initializer list.

// Good use case for this is when we are parsing some data that comes from the network.

import 'dart:math';

abstract class Shape {
  double get area;

  const Shape();

  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];

    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('Missing or invalid side property.');

      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('Missing or invalid radius property.');

      default:
        throw UnimplementedError('Shape: $type is not recognized.');
    }
  }
}

// How constructors are generated
// If a class doesn't have any constructors, Dart will generate an implicit one with no arguments (and because of this, subclasses' constructors don't need call super())
// If a class has one or more constructors, the implicit one with no arguments won't be generated (and subclasses' constructors don't have a super constructor that hey can use)

class Square extends Shape {
  final double side;

  const Square(this.side);

  @override
  double get area => side * side;
}

class Circle extends Shape {
  final double radius;

  const Circle(this.radius);

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> arguments) {
  final shapesJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 5.0,
    },
    {
      'type': 'trianle',
    }
  ];

  final shapes = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes.forEach(printArea);
}

// Regular constructors: all final variables  must be initialized immediately (as arguments or with the initializer list)
// Factory constructors can execute any arbitrary logic first, and then return an instance
// https://dash-overflow.net/articles/factory/