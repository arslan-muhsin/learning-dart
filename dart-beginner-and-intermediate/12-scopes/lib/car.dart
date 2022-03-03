/*
class Car {
  late String _brand;
  late String _model;
  late int _year;
  late int _kilometer;

  Car(String brand, String name, int year, int kilometer) {
    _brand = brand;
    _model = name;
    _year = year;
    _kilometer = kilometer;
  }

  get brand => _brand;

  set brand(value) => _brand = value;

  get model => _model;

  set model(value) => _model = value;

  get year => _year;

  set year(value) => _year = value;

  get kilometer => _kilometer;

  set kilometer(value) => _kilometer = _kilometer;
}
*/

class Car {
  late final String _brand;
  final String _model;
  final int _year;
  int kilometer;

  Car(this._brand, this._model, this._year, this.kilometer);

  get brand => _brand;
  get model => _model;
  get year => _year;
}
