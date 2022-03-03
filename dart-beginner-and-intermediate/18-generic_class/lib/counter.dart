class Counter<T extends num> {
  var items = <T>[];

  void addAll(Iterable<T> iterable) => items.addAll(iterable);

  void add(T value) => items.add(value);

  T elementAt(int index) => items.elementAt(index);

  T total() {
    num value = 0;

    for (var item in items) {
      value += item;
    }

    return value as T;
  }
}
