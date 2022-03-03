Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2, milliseconds: 500), () => 'Cappucino');

Future<String> fetchUserOrderTwo() => Future.delayed(
    Duration(seconds: 2, milliseconds: 500),
    () => throw Exception('Out of milk.'));

Future<void> main(List<String> args) async {
  print('Program started.');

  final order = await fetchUserOrder();
  print(order);

  try {
    final orderTwo = await fetchUserOrderTwo();
    print(orderTwo);
  } catch (e) {
    print(e);
  } finally {
    print('Done');
  }
}
