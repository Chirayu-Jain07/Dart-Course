// Future will await for the complete execution then return
Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 3), () => 'Cold Cofee');

Future<void> main() async {
  // simple message , then will work after Future complete  ,
  print('Program Start');
  // function call
  // the await expression can onlt be used in an async function
  // await can be used until future return
  // await is allowed in async funtion
  final order = await fetchUserOrder();
  print(order);
}

// output
// Program Start
// Order is ready : Cold Cofee
// Have It!!
