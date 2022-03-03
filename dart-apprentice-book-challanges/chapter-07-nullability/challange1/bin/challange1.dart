// Write a function that randomly returns 42 or null.
// Assign the return value of the function to a variable named result that
// will never be null. Give result a default of 0 if the function returns null

import 'dart:math';

void main(List<String> arguments) {
  int result = myFunction() == 42 ? 42 : 0;
  print(result);
}

int? myFunction() {
  var random = Random();
  var randomNumber = random.nextInt(2);

  return randomNumber == 1 ? 42 : null;
}
