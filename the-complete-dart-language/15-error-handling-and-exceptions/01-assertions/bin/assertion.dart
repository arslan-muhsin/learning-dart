class PositiveInt {
  final int value;

  const PositiveInt(this.value)
      : assert(value >= 0, 'Value cannot be negative.');
}

void signIn(String email, String password) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

main(List<String> args) {
  // final invalidAge = PositiveInt(-1); // Programmer error
  // print(invalidAge);

  signIn('', '');

  final list = [1, 3, 5, 7];
  print(list[10]); // RangeError
}

//  dart --enable-asserts bin/assertion.dart

// At Flutter apps assertion are enabled in debug mode 
// and disabled in release mode.

// Exceptions are triggered in debug and release mode.