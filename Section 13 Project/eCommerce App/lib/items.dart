import 'product.dart';

// Class Item
class Item {
  // Constructor
  const Item({required this.product, this.quantity = 1});
  final Product product;
  final int quantity;
  // to get item price
  double get price => quantity * product.price;
  // show the qunatiy of items and their name with price
  @override
  String toString() => '$quantity x ${product.name}: \$$price';
}
