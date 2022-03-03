// Equal objects should have the same hashCode
// Non-equal objects should have different hashCodes
// Always override hashCode when you override == operator
// Choosing good hashCodes is hard
// Tedious to do it for every new class.

// Equatable package solve these problems.
// With it don't need override == operator and hashCode anymore.

// Only use Equatable with immutable classes;
// All class variables mut be final.

import 'package:equatable/equatable.dart';

class Point extends Equatable {
  final int x;
  final int y;

  const Point(this.x, this.y);

  // We can do it with stringify of equatable package
  /*@override
  String toString() => 'Point($x, $y)';
  */
  @override
  bool? get stringify => true;

  // We don't need overriding hashCode and == operator when use equatable pack.
  /*@override
  int get hashCode => super.hashCode;
  */

  /*@override
  bool operator ==(covariant Point otherPoint) =>
      x == otherPoint.x && y == otherPoint.y;
  */
  @override
  List<Object?> get props => [x, y];
}

main(List<String> args) {
  print(Point(0, 1) == Point(0, 1));
  print(Point(5, 3));
}
