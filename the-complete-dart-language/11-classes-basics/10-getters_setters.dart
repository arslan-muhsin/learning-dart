class Temperature {
  Temperature.celcius(this.celcius);
  Temperature.fahrenheit(double fahrenheit) : celcius = (fahrenheit - 32) / 1.8;

  double celcius;

  //double fahrenheit() => celcius * 1.8 + 32;
  double get fahrenheit => celcius * 1.8 + 32; // Computed variable
  set fahrenheit(double fahrenheit) => celcius = (fahrenheit - 32) / 1.8;
}

main(List<String> args) {
  final temp1 = Temperature.celcius(30);
  final temp2 = Temperature.fahrenheit(90);
  print(temp1.celcius);
  temp1.celcius = 32;

  // Next line: This is method, we can use getter instead of this.
  //print(temp1.fahrenheit());
  print(temp1.fahrenheit); // This one getter.
  temp1.fahrenheit = 95; // We can assign fahrenheit with setter.

  print(temp1.fahrenheit);
  print(temp1.celcius);
  print(temp2.celcius);
}
