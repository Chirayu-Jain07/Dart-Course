import 'items.dart';
import 'product.dart';

// Class cart
class Cart {
  // private var items which hold value of item in form of map ( int and item type)
  final Map<int, Item> _items = {};

  void addProduct(Product product) {
    // We check if we have product with give product id
    // only thing change is keys and value of this map
    final item = _items[product.id];
    // if product is not there with same id
    if (item == null) {
      // then we will add product of to new item not to existing state
      _items[product.id] = Item(product: product, quantity: 1);
    } else {
      // else it will add one more quantity of product
      _items[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  //  to check if item is empty as item is private so we use get
  bool get isEmpty => _items.isEmpty;

  //  this funtion : get the item value with the map operator and combine them with reduce operator to get total
  double total() => _items.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);

  // Check for empty cart
  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is empty';
    }
    // list of all in cart with total
    final itemizedList =
        _items.values.map((item) => item.toString()).join('\n');
    return '------\n$itemizedList\nTotal: \$${total()}\n------';
  }
}
