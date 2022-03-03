import 'package:test/test.dart';

// Simple Test
/*
int add(int x, int y) => x + y;

void main() {
  // Define the test
  test("test to check add method", () {
    var expected = 30;
    var actual = add(10, 20); // passed
    // var actualTwo = add(10, 10); // failed
    expect(actual, expected);
  });
}
*/

// Grouping Test Cases
void main() {
  group("String", () {
    test("test on split() method of string class", () {
      var string = "foo,bar,baz";
      expect(string.split(","), equals(["foo", "bar", "baz"]));
    });

    test("test on trim() method of string class", () {
      var string = "  foo ";
      expect(string.trim(), equals("foo"));
    });
  });
}