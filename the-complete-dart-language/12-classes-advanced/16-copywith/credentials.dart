// If you need copy-behaviour in your immutable classes, create a copyWith method.
// This is a convention that is used extensively in Flutter
// copyWith is convenient: Set the properties that you want, omit the others (via named arguments)

class Credentials {
  final String email;
  final String password;

  const Credentials({this.email = '', this.password = ''});

  Credentials copyWith({String? email, String? password}) {
    return Credentials(
        email: email ?? this.email, password: password ?? this.password);
  }

  @override
  String toString() => 'Credentials($email, $password)';
}

main(List<String> args) {
  const credentials = Credentials();
  // credentials.email = 'me@example.com';

  final updated1 = credentials.copyWith(email: 'me@example.com');
  print(updated1);

  final updated2 = updated1.copyWith(password: 'too-easy');
  print(updated2);
}
