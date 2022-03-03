import 'package:interfaces/person.dart';

class Manager implements Person{
  @override
  String name;

  Manager(this.name);

  @override
  void introduce() {
    print('Hello, my name is $name and I\'m a manager.');
  }
}