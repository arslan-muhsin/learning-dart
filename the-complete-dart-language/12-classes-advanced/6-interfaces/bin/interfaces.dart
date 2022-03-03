abstract class InterfaceA {
  void a();
}

abstract class InterfaceB {
  void b();
}

class AB implements InterfaceA, InterfaceB {
  @override
  void a() {}

  @override
  void b() {}
}

abstract class Base {
  void foo();
  void bar() => print('bar');
}

// We don't need override bar method when extends
class SubClass extends Base {
  @override
  void foo() => print('foo');
}

// We need override two methods too when implements
class OtherSubClass implements Base {
  @override
  void bar() => print('bar');

  @override
  void foo() => print('foo');
}

// keyword      - type        - abstract methods  - concrete methods
// extends      - single      - must override     - can override
// implements   - multiple    - must override     - must override