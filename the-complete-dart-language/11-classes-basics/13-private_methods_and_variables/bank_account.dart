// Essential in object oriented programming
// Encapsulate things that should not be accessible outside a class

// private means it is accessible in the file
// it is in and not accessible to other files.
// This is why we need seperated files.

class BankAccount {
  BankAccount(this._balance);

  //double balance;
  double _balance;

  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
    }
  }
}
