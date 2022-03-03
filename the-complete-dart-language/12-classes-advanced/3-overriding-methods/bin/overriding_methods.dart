class Animal {
  final int age;

  Animal({required this.age});

  void sleep() => print('animal sleeping...');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  //@override
  //void sleep() => print('dog sleeping...');

  @override
  void sleep() {
    super.sleep();
    print('dog sleeping');
  }

  void bark() => print('barking...');
}

void main(List<String> arguments) {
  final animal = Animal(age: 10);
  animal.sleep();

  final dog = Dog(age: 4);
  dog.sleep();
}
