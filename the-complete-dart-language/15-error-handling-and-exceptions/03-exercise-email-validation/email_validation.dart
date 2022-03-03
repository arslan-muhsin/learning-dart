class EmailAddress {
  final String address;
  EmailAddress(this.address) {
    if (address.isEmpty) {
      throw FormatException('Email cannot be empty');
    }
    if (!address.contains('@')) {
      throw FormatException("$address doesn't contain the @ symbol");
    }
  }

  @override
  String toString() => address;
}

main(List<String> args) {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } catch (e) {
    print(e);
  }
}
