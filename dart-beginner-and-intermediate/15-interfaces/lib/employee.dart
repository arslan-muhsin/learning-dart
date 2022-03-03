import 'package:interfaces/person.dart';

class Employee implements Person {
  @override
  String name;

  Employee(this.name);

  @override
  void introduce() {
    print('Hello my name is $name and I\'m an employee.');
  }
}
