// More reusable code
// Very common with functional operators (map, where, reduce)

class Stack<T> {
  final List<T> _items = []; // => composition

  void push(T item) => _items.add(item);
  T pop() => _items.removeLast();
}

main(List<String> args) {
  final stack = Stack<int>(); // T => int
  stack.push(1);
  stack.push(2);
  stack.push(3);

  print(stack.pop()); // removed one returned.
  print(stack.pop()); // removed one returned.

  final anotherStack = Stack<String>(); // T => String
  anotherStack.push('Apple');
  anotherStack.push('Orange');
  anotherStack.push('Pineapple');

  print(anotherStack.pop()); // removed one returned.
  print(anotherStack.pop()); // removed one returned.
}
