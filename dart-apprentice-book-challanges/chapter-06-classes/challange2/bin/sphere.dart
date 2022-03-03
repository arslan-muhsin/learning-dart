const double pi = 3.14159265359;

class Sphere {
  final double radius;

  const Sphere(this.radius);

  double get volume => (4 / 3) * pi * radius * radius * radius;
  double get area => 4 * pi * radius * radius;
}

main(List<String> args) {
  final mySphere = Sphere(12);
  print('Volume: ${mySphere.volume}');
  print('Area: ${mySphere.area}');
}
