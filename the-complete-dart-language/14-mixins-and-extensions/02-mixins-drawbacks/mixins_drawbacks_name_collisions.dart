// Name collisions
// Can be hard to spot in bigger projects, compiler doesn't help.

mixin Mixin1 {
  int foo = 1;
}

mixin Mixin2 {
  int foo = 2;
}

class Foo with Mixin1, Mixin2 {
  void printFoo() => print(foo);
}

main(List<String> args) {
  final foo = Foo();
  foo.printFoo(); // 1 or 2 ?
}
