// Future will await for the complete execution then return
// Furure.delayed is a factory constructor
Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 3), () => 'Cold Cofee');

void main() {
  // simple message , then will work after Future complete  ,
  print('Program Start');
  // function call
  fetchUserOrder()
      .then((order) => print('Order is ready : $order'))
      .catchError((error) => print(error))
      .whenComplete(() => print('Have It!!'));
}

// output
// Program Start
// Order is ready : Cold Cofee
// Have It!!
