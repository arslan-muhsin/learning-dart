/*
Create a constant called age1 and set it equal to 42. 
Create another constant called age2 and set it equal to 21. 
Check that the type for both constants has been inferred correctly as int by hovering 
your mouse pointer over the variable names in VS Code.

Excerpt From: By Jonathan Sande & Matt Galloway. “Dart Apprentice”. Apple Books. 
*/

/*
Create a constant called averageAge and set it equal to the average of age1 
and age2 using the operation (age1 + age2) / 2

Hover your mouse pointer over averageAge to check the type. 
Then check the result of averageAge. Why is it a double if the components are all int?

Excerpt From: By Jonathan Sande & Matt Galloway. “Dart Apprentice”. Apple Books. 
*/

void main(List<String> args) {
  const age1 = 42; //int
  const age2 = 21; // int

  const avarageAge = (age1 + age2) / 2; // 31.5 double
  print(avarageAge
      .runtimeType); // iki tam sayının bölümü ondalıklı olabileceği için
}
