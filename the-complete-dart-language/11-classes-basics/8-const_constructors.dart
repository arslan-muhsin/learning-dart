// Have a class where all variables are final we can use const constructors

class Complex {
  const Complex(this.re, this.im); // Const constructor

  final double re;
  final double im;
}

main(List<String> args) {
  const complex = Complex(1, 2);
  const complexList = [Complex(3, 5), Complex(2, 7), Complex(7, 4)];

  print(complex);
  print(complexList);
}
