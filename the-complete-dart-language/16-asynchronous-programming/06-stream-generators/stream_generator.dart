// We can call yield multiple times to generate a Stream.
Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

Iterable<int> count(int n) sync* {
  for (var i = 1; i <= n; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Future<void> main(List<String> args) async {
  // final stream = Stream<int>.fromIterable([1,2,3,4]);
  final stream = countStream(4);
  final sum = await sumStream(stream);
  print('Sum: $sum');
}

// Iterable and Stream are very similiar
// * They can be iterated over with a for loop
// * They can be created with generator functions
// * They share many methods to process and modify items

// Iterables are synchronous, Streams are asynchronous.