// Dart classes can extend only one class.

// Mixins solve this problem => add functionality and reuse code in your classes

/* Extensions add functionality to existing classes, without modifying them
 Great when extending class in the Dart/Flutter SDK or 3rd party libraries
 */

// Mixins are good for defining behaviors (or capabilities).
// Classes can inherit those behaviors in a more maintainable way

// Mixins lead to shallow class hierarchies (this is good thing)
// Single inhertiance (extends) leads to deep class hierarchies. (making the code harder to maintain)

// In Dart, any class can be added as a mixin to another class (using the with keyword)
/*class Breathing {
  void breathe() => print('breathing...');
}*/

mixin Breathing {
  void breathe() => print('breathing...');
}

mixin Swimming {
  void swim() => print('swimming.');
}

class Animal with Breathing {}

class Plant with Breathing {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main(List<String> arguments) {
  final fish = Fish();
  fish.swim();

  final human = Human();
  human.swim();

  final plant = Plant();
  plant.breathe();
}
