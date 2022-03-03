// Dart classes can have
// Default constructors
// Named constructors
// Factory constructors

class Complex {
  const Complex(this.re, this.im);

  Complex.zero()
      : re = 0,
        im = 0;

  Complex.identity()
      : re = 1,
        im = 0;

  Complex.real(this.re) : im = 0;
  Complex.imaginary(this.im) : re = 0;

  final double re;
  final double im;
}

main(List<String> args) {
  // Some special complex numbers:
  // 0 + i * 0
  final zero = Complex(0, 0);
  final zeroNamed = Complex.zero();

  // 1 + i * 0
  final identity = Complex(1, 0);
  final identityNamed = Complex.identity();

  // a + i * 0
  final real = Complex(3, 0);
  final realNamed = Complex.real(3);

  // 0 + i * b
  final imaginary = Complex(0, 4);
  final imaginaryNamed = Complex.imaginary(7);
}

// In this way our classes more;
// Easier to use correctly.
// Harder to use incorrectly.

