// Stream is a sequence of asynchronous events.

// Create/add values to a Stream:
// * Stream.fromIterable
// * Stream generator (async*, yield)
// * StreamController

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;

  // When work with Stream await for is necessary.
  await for (var value in stream) {
    sum += value;
  }

  return sum;
}

// async-await not needed at here.
Future<int> sumStreamTwo(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Future<void> main(List<String> args) async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  //final sum = await sumStream(stream);
  //print('Sum: $sum');

  final sum2 = await sumStreamTwo(stream);
  print('Sum 2: $sum2');
}
