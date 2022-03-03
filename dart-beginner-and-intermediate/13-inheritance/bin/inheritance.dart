import 'package:inheritance/feline.dart';

void main(List<String> arguments) {
  var cat = Feline();

  cat.takeBreath(); // From animal extend
  cat.walk(); // From mammal extend
  cat.growl(); // From own (feline)
}
