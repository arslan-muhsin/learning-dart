// In Dart;
// Single Subscription Streams
// Broadcast Streams

Future<void> main(List<String> args) async {
  // Unhandled exception:
  // Bad state: Stream has already been listened to.
  final stream = Stream<int>.fromIterable([1, 2, 34, 6]);
  await stream.forEach(print);

  final doubles = stream.map((value) => value * 2).where((value) => value > 3);
  await doubles.forEach(print);
}
