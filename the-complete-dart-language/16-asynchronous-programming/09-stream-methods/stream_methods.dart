// https://dart.dev/tutorials/language/streams#process-stream-methods

Future<void> main(List<String> args) async {
  final stream = Stream.fromIterable([1, 2, 5, 8]);

  /*
  final value = await stream.first;
  print(value);
  */

  // stream.forEach(print);

  final doubles = stream.map((value) => value * 2).where((value) => value > 3);
  await doubles.forEach(print);
}
