void main(List<String> arguments) {
  // bool
  var isAvailable = true;
  var isExpensive = false;

  print(isAvailable);
  print(isExpensive);
  print('isAvailable is a ${isAvailable.runtimeType} variable.');

  // number, int, double
  num age = 28.8;
  num age2 = 28;
  var day = 13; //int
  var temp = 23.7; // double

  var parsedInteger = int.parse('12');
  print(parsedInteger);

  var parsedDouble = double.parse('13.99');
  print(parsedDouble);

  // String
  var fullName = 'James Black';
  print('Hello $fullName');

  var indexOfFullName = fullName.indexOf(' ');
  var firstName = fullName.substring(0, indexOfFullName);
  var lastName = fullName.substring(indexOfFullName).trim();

  print(firstName);
  print(lastName);

  // Length
  print(fullName.length);

  // Contains
  print(fullName.contains('Black'));

  // Split - Create List
  var nameList = fullName.split(' ');
  print(nameList);
  print(nameList[0]);
  print(nameList[1]);
}
