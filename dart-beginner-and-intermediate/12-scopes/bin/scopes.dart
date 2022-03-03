// Public & Private Scopes
/*
import 'package:scopes/animal.dart';

void main(List<String> arguments) {
  var myCat = Animal('Fluffy', 4, 'Short Hair');
  myCat.breed = "Scottish Fold";

  myCat.sayHi();
  myCat.saySomething('Meow');
}
*/

// Getters & Setters
/*
import 'package:scopes/car.dart';

void main(List<String> arguments){
  var myCar = Car('BMW', 'AMG', 2020, 380);

  print(myCar);
  print(myCar.runtimeType);
  print(myCar.brand);
  print(myCar.model);
  print(myCar.year);
  print(myCar.kilometer);

  myCar.kilometer += 55;
  print(myCar.kilometer);
}
*/

import 'package:scopes/fruit.dart';

void main(List<String> arguments){
  var apple = Fruit();
  var pineapple = Fruit();
  var watermelon = Fruit();
  var banana = Fruit();

  Fruit.rot();
  Fruit.rot();
  Fruit.rot();

  var melon = Fruit();
}