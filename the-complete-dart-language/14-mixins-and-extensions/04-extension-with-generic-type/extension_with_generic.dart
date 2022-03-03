// General way
extension IterableX on Iterable<int> {
  int sum() => reduce((value, element) => value + element);
}

// Want an extension to apply to all subclasses of a specific class.
// Use a generic type constraint
extension IterableGeneric<T extends num> on Iterable<T> {
  T sum() => reduce((value, element) => (value + element) as T);
}

main(List<String> args) {
  final sum = [1, 2, 3].sum();
  print(sum);

  int sumTwo = [4, 6, 78].sum();
  print(sumTwo);

  double sumThree = [7.5, 68.4, 33.2].sum();
  print(sumThree);

  var sumFour = [6, 4, 3, 3.5, 7].sum();
  print(sumFour);
}

// Also there is useful package for extension: https://pub.dev/packages/dartx