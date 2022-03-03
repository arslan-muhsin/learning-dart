class Employee {
  late String _name;
  late String _position;

  Employee({required String name, required String position}) {
    _name = name;
    _position = position;
  }

  void introduce() {
    print('Hello my name is $_name and I\'m working at $_position position.');
  }
}
