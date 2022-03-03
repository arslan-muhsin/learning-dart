class Animal {
  final int age;

  Animal({required this.age});

  void sleep() => print('sleeping...');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  void bark() => print('barking...');
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print('moo...');
}

class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);

  void catchBall() => print('Catching ball...');
}

void main(List<String> arguments) {
  final animal = Animal(age: 10);
  print('Just animal');
  animal.sleep();

  final dog = Dog(age: 4);
  print('Dog');
  dog.bark();
  dog.sleep();

  final cow = Cow(age: 2);
  print('Cow');
  cow.moo();
  cow.sleep();

  final cleverDog = CleverDog(age: 3);
  print('Clever dog');
  cleverDog.bark();
  cleverDog.catchBall();
  cleverDog.sleep();
}
