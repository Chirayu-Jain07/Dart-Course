import 'dart:io';

import '../lib/cart.dart';
import '../lib/product.dart';

const allProducts = [
  Product(id: 1, name: 'almonds', price: 5.00),
  Product(id: 2, name: 'cashew ', price: 3.50),
  Product(id: 3, name: 'date', price: 4.40),
  Product(id: 4, name: 'hazelnuts', price: 4.00),
  Product(id: 5, name: 'raisins', price: 2.80),
  Product(id: 6, name: 'walnuts', price: 7.50),
];

void main() {
  // instance for cart class
  final cart = Cart();
  // infinate loop
  while (true) {
    // prompt print interactive question
    stdout.write(
        'What do you want to do? (v)iew items, (a)dd item, (c)heckout: ');
    // Read the input from prompt
    final line = stdin.readLineSync();
    // Match the input
    if (line == 'a') {
      // a for add item
      final product = chooseProduct();
      // no item in cart then add a product
      if (product != null) {
        cart.addProduct(product);
        // Show the items in cart
        print(cart);
      }
    } else if (line == 'v') {
      // for view mode only , what's in cart
      print(cart);
    } else if (line == 'c') {
      // Checkout and loop termination
      if (checkout(cart)) {
        break;
      }
    }
  }
}

//  Nullable return type so to give null if return type is not known
Product? chooseProduct() {
  //this line take all the disaply name and add it to string and newline as seperator
  final productsList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available products:\n$productsList\nYour choice: ');
  final line = stdin.readLineSync();
  // for loop to check the choice's product avaliable
  for (var product in allProducts) {
    if (product.initial == line) {
      return product;
    }
  }
  print('Not found');
  return null;
}

// Checkout funtion
bool checkout(Cart cart) {
  // check for empty cart
  if (cart.isEmpty) {
    print('Cart is empty');
    return false;
  }
  // var total for all cart total
  final total = cart.total();
  print('Total: \$$total');
  // Ask for cash
  stdout.write('Payment in cash: ');
  //  read
  final line = stdin.readLineSync();
  if (line == null || line.isEmpty) {
    return false;
  }
  // parse in the line value to double
  final paid = double.tryParse(line);
  if (paid == null) {
    return false;
  }
  // Basic logic to check control of change and payment
  if (paid >= total) {
    final change = paid - total;
    print('Change: \$${change.toStringAsFixed(2)}');
    return true;
  } else {
    print('Not enough cash.');
    return false;
  }
}

// Algorithm:-
//  loop
//   prompt: view cart / add item / checkout
//   if selection == add item
//     choose a product
//     add it to the cart
//     print cart
//   else if selection == view cart
//     print cart
//   else if selection == checkout
//     do checkout
//     exit
//   end
