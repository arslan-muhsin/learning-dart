import 'dart:io';

class Product {
  final int id;
  final String name;
  final double price;

  const Product({required this.id, required this.name, required this.price});

  String get displayName => '($initial)${name.substring(1)}: \$$price';
  String get initial => name.substring(0, 1);
}

class Item {
  final Product product;
  final int quantity;

  Item({required this.product, this.quantity = 1});

  double get price => quantity * product.price;

  @override
  String toString() => '$quantity x ${product.name} \$$price';
}

class Cart {
  final Map<int, Item> _items = {};

  double total() => _items.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);

  bool get isEmpty => _items.isEmpty;

  void addProduct(Product product) {
    final item = _items[product.id];

    if (item == null) {
      _items[product.id] = Item(product: product, quantity: 1);
    } else {
      _items[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is empty.';
    }

    final itemizedList =
        _items.values.map((item) => item.toString()).join('\n');

    return '--------\n$itemizedList\nTotal:${total()}\n--------';
  }
}

Product findProduct(List<Product> products, int id) {
  return products.firstWhere((element) => element.id == id);
}

int askProduct() {
  stdout.writeln('Enter product id.');
  return int.parse(stdin.readLineSync()!);
}

const allProducts = [
  Product(id: 1, name: 'Apple', price: 1.2),
  Product(id: 2, name: 'Banana', price: 0.8),
  Product(id: 3, name: 'Grape', price: 1.7),
  Product(id: 4, name: 'Mushroom', price: 0.7)
];

main(List<String> args) {
  final cart = Cart();

  while (true) {
    stdout
        .write('What do you want to do? (v)iew items, (a)dd item, (c)heckout');

    final line = stdin.readLineSync();

    if (line == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (line == 'v') {
      print(cart);
    } else if (line == 'c') {
      var isSuccess = checkOut(cart);

      if (isSuccess) {
        break;
      }
    }
  }
}

Product? chooseProduct() {
  final productsList =
      allProducts.map((product) => product.displayName).join('\n');

  stdout.write('Available products:\n$productsList\nYour choice:');

  final line = stdin.readLineSync();

  for (var product in allProducts) {
    if (product.initial == line) {
      return product;
    }
  }

  print('Not found');
  return null;
}

bool checkOut(Cart cart) {
  if (cart.isEmpty) {
    print('Cart is empty.');
    return false;
  }

  final total = cart.total();
  print('Total: \$$total');
  stdout.write('Payment in cash: ');
  final line = stdin.readLineSync();

  if (line == null || line.isEmpty) {
    return false;
  }

  final paid = double.tryParse(line);

  if (paid == null) {
    return false;
  }

  if (paid >= total) {
    final change = paid - total;
    print('Change \$${change.toStringAsFixed(2)}');
    return true;
  } else {
    print('Not enough cash.');
    return false;
  }
}
