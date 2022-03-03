class Animal {
  void sleep() => print('sleeping...');
}

class Dog extends Animal {
  void bark() => print('barking...');
}

class Cow extends Animal {
  void moo() => print('moo...');
}

class CleverDog extends Dog {
  void catchBall() => print('Catching ball...');
}

void main(List<String> arguments) {
  final animal = Animal();
  print('Just animal');
  animal.sleep();

  final dog = Dog();
  print('Dog');
  dog.bark();
  dog.sleep();

  final cow = Cow();
  print('Cow');
  cow.moo();
  cow.sleep();

  final cleverDog = CleverDog();
  print('Clever dog');
  cleverDog.bark();
  cleverDog.catchBall();
  cleverDog.sleep();
}
