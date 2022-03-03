// Error is program failure
// Exemption can be handled

/*
void main(List<String> arguments) {
  int age;
  var dogYears = 7;
  print(age * dogYears);
}
*/

// Try-catch-finally
/*
void main(List<String> arguments) {
  var x = 12;
  var y = 0;
  int res;

  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }

  try {
    res = x ~/ y;
  } catch (e) {
    print('Exception: $e');
  }
}
*/

// Throw an exception
/*
void main(List<String> arguments){
  var age = 3;

  if(age < 10){
    throw Exception('The age cannot be less than 10');
  }
}
*/

import 'dart:io';

int getAge(String? ageInput){
  try {
    return int.parse(ageInput!);
  } on FormatException {
    throw Exception('Please enter valid age');
  }
}

void checkAges(int age){
  if (age < 18) {
    throw Exception('too young');
  }

  if (age > 99) {
    throw Exception('too old');
  }
}

void main(List<String> arguments) {
  stdout.write('Enter your age\n');

  var ageInput = stdin.readLineSync();
  var age = getAge(ageInput);
  checkAges(age);
}
