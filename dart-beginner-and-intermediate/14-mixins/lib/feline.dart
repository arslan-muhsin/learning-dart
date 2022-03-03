import 'package:mixins/mammal.dart';

class Feline extends Mammal {
  bool hasPawn = true;

  void growl() => print('Grrr');

  @override
  void takeBreath() {
    print('Take breath as Feline');
    super.takeBreath();
  }
}
