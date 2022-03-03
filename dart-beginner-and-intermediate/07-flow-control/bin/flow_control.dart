// ASSERT
/*
void main(List<String> arguments) {
  print('Starting');
  var age = 30;
  // assert(age == 30);
  assert(age == 43);
  print('Finished');
}
*/

// IF-ELSE
/*
void main(List<String> arguments) {
  var age = 51;

  if (age < 18) {
    print('You are underage');
  }

  if (age >= 50) {
    print('You are old one.');
  }
}
*/

// SWITCH
/*
enum billTypes { Water, Gas, Electric, Broad }

void main(List<String> arguments) {
  var billType = billTypes.Electric;
  var billTotal = 33;

  switch (billType) {
    case billTypes.Water:
      print('Your water bill is \$$billTotal');
      break;
    case billTypes.Gas:
      print('Your gas bill is \$$billTotal');
      break;
    case billTypes.Electric:
      print('Your electric bill is \$$billTotal');
      break;
    case billTypes.Broad:
      print('Your broad bill is \$$billTotal');
      break;
  }
}
*/

// DO WHILE
/*
void main(List<String> arguments) {
  var current = 0;
  var limit = 5;

  do {
    print(current);
    current++;
  } while (current < limit);
}
*/

// WHILE
/*
void main(List<String> arguments) {
  var current = 0;
  var limit = 5;

  while (current < limit) {
    print(current);
    current++;
  }
}
*/

// Continue
/*
void main(List<String> arguments) {
  var start = 0;
  var end = 42;
  var listOfMod3 = <int>[];

  do {
    start++;
    if (start % 3 != 0) {
      continue;
    } else {
      listOfMod3.add(start);
    }
  } while (start <= end);

  print('Mod List of 3: $listOfMod3');
}
*/

// Break
/*
void main(List<String> arguments) {
  var age = 0;
  var limit = 22;
  var driveLicenseAge = 18;

  do {
    age++;
    print(age);

    if (age == driveLicenseAge) {
      print('You can take driver license now.');
      break;
    }
  } while (age <= limit);
}
*/

// Foreach
/*
void main(List<String> arguments) {
  var people = {'Michael', 'John', 'Eric', 'Rick'};

  people.forEach((name) {
    print(name);
  });
}
*/

// For
void main(List<String> arguments) {
  for (var i = 1; i <= 10; i++) {
    print(i);

    if(i == 5){
      print('half way there');
    }
  }
}
