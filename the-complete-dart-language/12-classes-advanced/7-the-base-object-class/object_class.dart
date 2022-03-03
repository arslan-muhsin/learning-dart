class Car {
  void test() => super.toString(); // super is object class
}

main(List<String> args) {
  final car = Car();
  print(car); // print take argument as Object? (nullable object class)
}
