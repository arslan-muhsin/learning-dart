class Student {
  final String firstName;
  final String lastName;
  int grade;

  Student(this.firstName, this.lastName, this.grade);

  void introduce() {
    print('Hello, my name is $firstName $lastName and my grade is $grade.');
  }
}

main(List<String> args) {
  final bert = Student('Bert', 'Kellson', 95);
  bert.introduce();

  final ernie = Student('Ernie', 'Muscade', 85);
  ernie.introduce();
}
