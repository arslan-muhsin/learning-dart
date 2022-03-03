class Fruit {
  static int _amount = 0; // Without static, amount will be not increased.

  Fruit(){
    _amount += 1;
    print('Total fruit: $_amount');
  }

  static void rot(){
    _amount--;
    print('One fruit rotted.');
  }
}
