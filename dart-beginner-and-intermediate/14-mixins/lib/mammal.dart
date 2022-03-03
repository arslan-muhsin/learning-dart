import 'package:mixins/animal.dart';

class Mammal extends Animal {
  bool hasHair = true;
  bool hasBackbone = true;

  void walk() => print('Walking...');

  @override
  void takeBreath() {
    print('Take breath as Mammal');
    super.takeBreath();
  }
}
