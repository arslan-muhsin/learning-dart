void main(List<String> arguments) {
  var myNumbers = <int>[3, 5, 6];
  var myFavColors = <String>['Purple', 'Black', 'Dark Blue'];

  doSomething(3, 4);
  doSomething('Hey', 'Hello');
  doSomething(myFavColors, myNumbers);

  doAnotherThing(3, 5);
  //doAnotherThing('Hello', 'World'); // It's should be num type

  var result = add(1, myNumbers);
  print(result);
}

// Simple Generic
void doSomething<T>(T a, T b) {}

// Generic 2
void doAnotherThing<T extends num>(T a, T b) {}

// Generic 3
T add<T extends num>(T value, List<T> items) {
  T ret = value;

  for (var value in items) {
    ret = (ret + value) as T;
  }

  return ret;
}
