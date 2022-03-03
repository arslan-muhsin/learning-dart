// In the previous example we had a class called Stack and its use List.
// To recognize the relationships between them;
// Stack has a list ⇒ composition, constrast to inheritance. (has-a relationship)
// If Stack extends from List ⇒ inheritance. (is-a relationship)

// Flutter uses composition heavily to define the app's UI.
// Everything is a widget.
// Now let's make a flutter widget hierarchy example;

// Composition <-> has-a relationships
// Inhertiance <-> is-a relationships

abstract class Widget {}

class Text extends Widget {
  final String text;

  Text(this.text);
}

class Button extends Widget {
  final Widget child;
  final void Function()? onPressed; // Nullable function property

  Button({required this.child, this.onPressed});
}

main(List<String> args) {
  // Scalable approach, use composition to create complext UIs.
  final button = Button(
    child: Text('Hello'),
    onPressed: () => print('Button pressed.'),
  );
}
