// static class variables belong to the class itself.

class Messages {
  static const String welcome = "Welcome"; // static variable
  static const String signIn = "Sign In"; // static variable
  static String greet(String name) => "Hi, $name"; // static method

  void foo() {
    print(welcome);
  }
}

main(List<String> args) {
  print(Messages.welcome);
  print(Messages.signIn);
  print(Messages.greet('Jackie'));

  final messages = Messages();
  messages.foo();
}
