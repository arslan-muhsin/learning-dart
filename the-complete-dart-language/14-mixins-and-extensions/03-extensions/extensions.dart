// Give a name if wanting to use it across files.
extension NumberParsing on String {
  int? toIntOrNull() => int.tryParse(this);
}

void main(List<String> args) {
  int.tryParse('123');
  '123'.toIntOrNull(); // extension method
  '456'.toIntOrNull();
}
