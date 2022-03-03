// ENUM
/*
enum colors { red, green, blue }

void main(List<String> arguments) {
  print(colors.values);
  print(colors.red);
}
*/

// LIST
/*
void main(List<String> arguments) {
  var myNumbers = [1, 2, 4, 12];

  print(myNumbers);
  print('\n');

  print(myNumbers[0]);
  print(myNumbers.elementAt(1));

  print('\n');
  myNumbers.forEach((number) {
    print(number);
  });

  var toDoList = <String>[];
  toDoList.add('Do Sport');
  toDoList.add('Read Book');

  print('\n');
  toDoList.forEach((todo) {
    print(todo);
  });
}
*/

// SET
/*
void main(List<String> arguments) {
  var myNumbers = <int>{};

  myNumbers.add(1);
  myNumbers.add(2);
  myNumbers.add(12);
  myNumbers.add(1);

  myNumbers.forEach((number) {
    print(number);
  });
}
*/

// QUEUE
/*
import 'dart:collection';

void main(List<String> arguments){
  var myQueue = Queue();
  
  myQueue.add(3);
  myQueue.add(9);
  myQueue.add(81);

  myQueue.removeFirst();
  myQueue.removeLast();

  print(myQueue);
}
*/

// MAP
void main(List<String> arguments) {
  var people = {
    'Dad': 'Michael',
    'Mom': 'Jennifer',
    'Son': 'Bruce',
    'Daughter': 'Helen'
  };

  print(people);
  print('Keys are: ${people.keys}');
  print('Values are: ${people.values}');
  print('Dad is: ${people['Dad']}');

  var ages = <String, int>{};
  ages.putIfAbsent('Dad', () => 42);
  ages.putIfAbsent('Mom', () => 39);

  ages.forEach((key, value) {
    print('$key is $value years old.');
  });
}
