main(List<String> args) {
  Stream.fromIterable([1, 2, 3, 4]);
  Stream.value(10);

  // A Future can complete with an error.
  // A Stream can emit an error.
  Stream.error(Exception('Something went wrong.'));

  Stream.empty();

  Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));

  Stream.periodic(Duration(seconds: 1), (index) => index);
}
