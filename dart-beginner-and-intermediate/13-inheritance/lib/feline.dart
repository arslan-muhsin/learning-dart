import 'mammal.dart';

class Feline extends Mammal {
  bool hasClaws = true;

  void growl() => print('Grr...');

  @override
  void takeBreath() {
    print('Breathing like Feline...');
    super.takeBreath();
  }
}
