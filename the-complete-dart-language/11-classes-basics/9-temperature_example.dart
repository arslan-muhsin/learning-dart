class Temperature {
  Temperature.celcius(this.celcius);
  Temperature.fahrenheit(double fahrenheit) : celcius = (fahrenheit - 32) / 1.8;
  double celcius;
}

main(List<String> args) {
  final temp1 = Temperature.celcius(30);
  final temp2 = Temperature.fahrenheit(90);
  print(temp1.celcius);
  temp1.celcius = 32;
}
