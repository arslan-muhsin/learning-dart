class Fraction {
  final int numerator;
  final int denominator;

  double get value => numerator / denominator;

  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }
}

void testFraction() {
  try {
    final f = Fraction(3, 0);
    print(f.value);
  } on IntegerDivisionByZeroException catch (e, st) {
    print(e);
    print(st);
    rethrow;
  } on Exception catch (e) {
    print(e);
  } finally {
    print('testFraction done');
  }
}

main(List<String> args) {
  testFraction();
  print('done');
}

// Use rehrow to:
// * Handle the exception inside a catch block. 
// * Propagate the exception to the calling code.