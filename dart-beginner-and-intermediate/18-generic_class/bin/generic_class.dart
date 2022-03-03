import 'package:generic_class/counter.dart';

void main(List<String> arguments) {
  var myDoubleNumbers = <double>[3.2, 1.5, 5.6, 7.7];
  var doubles = Counter<double>();

  var myIntNumbers = <int>[3, 5, 7, 8];
  var integers = Counter<int>();

  doubles.addAll(myDoubleNumbers);
  var doubleElement = doubles.elementAt(2);
  var doubleTotal = doubles.total();
  print(doubleElement);
  print(doubleTotal);

  integers.addAll(myIntNumbers);
  var integerElement = integers.elementAt(0);
  var integerTotal = integers.total();
  print(integerElement);
  print(integerTotal);
}
