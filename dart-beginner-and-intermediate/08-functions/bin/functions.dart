// Basic Function
/*
void Hello() {
  print('Hello World');
}

void SayHello(String name){
  print('Hello $name');
}

int CalculateDogYear(int age){
  return age * 7;
}

void main(List<String> arguments) {
  Hello();
  SayHello('Michael');

  var ageAsDogYear = CalculateDogYear(15);
  print('Your age as dog year: $ageAsDogYear');
}
*/

// Optional Parameters
/*
void SayHello([String? name]) {
  if (name == null) {
    print('Hello there!');
  } else {
    print('Hello $name');
  }
}

// Default Parameter Value
void Download(String fileName, [bool openFile = false]) {
  print('Downloading $fileName');

  if (openFile) {
    print('Opening $fileName');
  }
}

void main(List<String> arguments) {
  SayHello();
  SayHello('Justin');

  Download('keylogger.exe');
  Download('safeFile.exe', true);
}
*/

// Named Parameters
/*
int squareFeet({required int width, required int length}) {
  return width * length;
}

void main(List<String> arguments) {
  print('Square feet is: ${squareFeet(width: 11, length: 5)}');
}
*/

// Functions as Objects
/*
int calculateYears({required int age, required int multiplier}) {
  return age * multiplier;
}

void main(List<String> arguments){
  var catAge = calculateYears(age: 27, multiplier: 12);
  var dogAge = calculateYears(age: 27, multiplier: 7);

  print('Your age as cat age is $catAge');
  print('Your age as dog age is $dogAge');
}
*/

// Anonymous Functions
/*
void main(List<String> arguments) {
  () {
    print('Hello');
  };

  var people = ['Bryan', 'Michael', 'Derick'];

  people.forEach((person) {
    print(person);
  });

  people.where((String name){
    switch(name){
      case 'Bryan':
        return true;
      case 'Michael':
        return false;
      case 'Derick':
        return true;
      default:
        return false;
    }
  }).forEach(print);
}
*/

import 'dart:io';

int calculateHalfway(int total){
  return (total / 2).ceil();
}

void checkHalfway(int current, halfway){
  if(current == halfway){
    print('half way there');
  }
}

void main(List<String> arguments){
  stdout.write('Enter maximum number\n');

  var maximumNumberInput = stdin.readLineSync();
  var maximumNumber = int.parse(maximumNumberInput!);
  var halfway = calculateHalfway(maximumNumber);

  for(var i = 1; i <= maximumNumber; i++){
    print(i);
    checkHalfway(i, halfway);
  }
}