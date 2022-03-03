import 'package:interfaces/employee.dart';
import 'package:interfaces/manager.dart';

void main(List<String> arguments) {
  var newEmployee = Employee('Jason');
  var newManager = Manager('Michael');

  newEmployee.introduce();
  newManager.introduce();
}
