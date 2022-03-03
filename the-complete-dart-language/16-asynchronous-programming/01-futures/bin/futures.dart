Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2, milliseconds: 500), () => 'Cappucino');

Future<String> fetchUserOrder2() =>
    Future.delayed(Duration(seconds: 3), () => throw Exception('Out of milk'));

main(List<String> args) {
  print('Program started');
  fetchUserOrder().then((order) => print('Order is ready $order'));

  fetchUserOrder2()
      .then((order) => print('Order is ready $order'))
      .catchError((error) => print(error))
      .whenComplete(() => print('User order done.'));
}
