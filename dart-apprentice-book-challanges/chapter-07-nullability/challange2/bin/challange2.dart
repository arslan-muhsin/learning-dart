/* People around the world have different customs for giving names to children. 
It would be difficult to create a data class to accurately
represent them all, but try it like this: */

// Create a class called Name with givenName and surname properties.

/*Some people write their surname last and some write it first. Add a 
Boolean property called surnameIsFirst to keep track of this.*/

// Not everyone in the world has a surname.

// Add a toString method that prints the full name.

class Name {
  String givenName;
  String? surname;
  bool surnameIsFirst;

  Name({required this.givenName, this.surname, this.surnameIsFirst = false});

  void printFullName() {
    final fullName = !surnameIsFirst
        ? "$givenName ${surname ?? ''}"
        : "${surname ?? ''} $givenName";

    print(fullName);
  }
}

void main(List<String> arguments) {
  final myName = Name(givenName: 'Muhsin', surname: 'Arslan');
  myName.printFullName();

  final nameWithoutSurname = Name(givenName: 'Chu Li');
  nameWithoutSurname.printFullName();

  final firstSurname =
      Name(givenName: 'Michael', surname: 'Lumber', surnameIsFirst: true);
  firstSurname.printFullName();
}
