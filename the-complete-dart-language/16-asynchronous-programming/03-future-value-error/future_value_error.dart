// Use this if you want a Future that completes immediately
Future<String> fetchUserOrder() => Future.value('Espresso');
Future<String> fetchUserOrderTwo() => Future.error('Out of milk');

Future<void> main(List<String> args) async {
  final order = await fetchUserOrder();
  print(order);

  final order2 = await fetchUserOrderTwo();
  print(order2);
}

// They're useful when write test.
