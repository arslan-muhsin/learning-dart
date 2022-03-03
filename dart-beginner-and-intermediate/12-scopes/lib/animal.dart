class Animal {
  final String _name; // With underscore private
  final int _age;
  String breed; // Without underscore public

  Animal(this._name, this._age, this.breed);

  void _displayMessage(String message) => print(message);

  void sayHi() =>
      print('Hello my name is $_name and I\'m $_age years old. I\'m a $breed.');

  void saySomething(String message) => _displayMessage(message);
}
