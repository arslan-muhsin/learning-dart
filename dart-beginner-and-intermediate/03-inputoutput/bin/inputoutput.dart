import 'dart:io';

void main(List<String> arguments) {
  stdout.write('What is your name? \r\n');

  var name = stdin.readLineSync();

  name!.isEmpty
      ? stderr.write('Enter your name, please.')
      : stdout.write('Hello $name');
}
