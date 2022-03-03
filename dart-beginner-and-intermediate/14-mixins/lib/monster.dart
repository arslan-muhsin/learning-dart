import 'feline.dart';
import 'dragon.dart';
import 'ghost.dart';

class Monster extends Feline with Dragon, Ghost {
  bool glowInDark = true;

  @override
  void takeBreath() {
    print('Take breath as Monster');
    super.takeBreath();
  }
}
