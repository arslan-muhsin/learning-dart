// ax^2+bx+c=0

import 'dart:math';

main(List<String> args) {
  const a = 2.0;
  const b = 3.0;
  const c = 1.0;

  final root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  final root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);

  print(root1);
  print(root2);
}
