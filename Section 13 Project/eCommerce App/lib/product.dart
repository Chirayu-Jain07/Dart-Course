// class product
class Product {
  // Construtor
  const Product({required this.id, required this.name, required this.price});
  final int id;
  final String name;
  final double price;
  //  this show name like (a)pplepad
  String get displayName => '($initial)${name.substring(1)}: \$$price';
  // To get substring, get the first letter from string
  String get initial => name.substring(0, 1);
}
