class Animal {
  late String _name;
  late int _age;

  Animal({required String name, required int age}){
    _name = name;
    _age = age;
  }

  void sayHi() {
    if (_name.isEmpty) {
      print('Hello');
    } else {
      print('Hello, I\'m $_name and I\'m $_age years old.');
    }
  }
}
