class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];

    if (name is String && age is int) {
      return Person(name: name, age: age);
    } else {
      throw StateError('Name or age property is invalid or missing.');
    }
  }

  Map<String, Object> toJson() => {'name': name, 'age': age};
}

main(List<String> args) {
  final person = Person.fromJson({
    'name': 'Michael',
    'age': 33,
  });

  print(person);

  final json = person.toJson();
  print(json);
}
