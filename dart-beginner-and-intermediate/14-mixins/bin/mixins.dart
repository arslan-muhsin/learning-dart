import 'package:mixins/monster.dart';

void main(List<String> arguments) {
  var dungeonBoss = Monster();

  // Inheritance from Feline
  dungeonBoss.takeBreath();

  // Take from Dragon ('with' keyword: mixins)
  dungeonBoss.fly();

  // Take from Dragon ('with' keyword: mixins)
  print(dungeonBoss.hasFire);

  // Take from Ghost ('with' keyword: mixins)
  print(dungeonBoss.walksThoughWalls);
}
