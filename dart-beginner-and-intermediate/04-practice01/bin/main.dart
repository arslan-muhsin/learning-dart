import 'dart:io';

void main(List<String> arguments) {
  const message = 'Welcome to basic calculator';
  print(message);

  double? number1;
  double? number2;

  stdout.write('Please enter first number\n');
  var number1Input = stdin.readLineSync();

  if (number1Input!.isNotEmpty) {
    number1 = double.parse(number1Input);
  }

  stdout.write('Please enter second number\n');
  var number2Input = stdin.readLineSync();

  if (number2Input!.isNotEmpty) {
    number2 = double.parse(number2Input);
  }

  if (number1 != null && number2 != null) {
    stdout.write('Please select operator: + - / *\n');
    var operator = stdin.readLineSync();

    if (operator == '+') {
      print(number1 + number2);
    } else if (operator == '-') {
      print(number1 - number2);
    } else if (operator == '/') {
      print(number1 / number2);
    } else if (operator == '*') {
      print(number1 * number2);
    }
  } else {
    print('Calculation failed');
  }
}
