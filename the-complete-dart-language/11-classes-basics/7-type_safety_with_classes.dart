class Person {
  Person({required this.name, required this.age, required this.height});

  final String name;
  int age;
  int height;

  void introduce() {
    print(
        "My name is $name, I'm $age years old. I'm $height centimeters tall.");
  }
}

main(List<String> args) {
  final person = Person(name: 'Michael', age: 33, height: 177);
  person.introduce();

  // Dart warns us on a typo made in type or property name in the next line.
  // final person2 = Person(name: 'Jennie', age: '32', heigth: 166);
  // Thus, we have a type-safe structure.
}
