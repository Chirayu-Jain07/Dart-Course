// Future will await for the complete execution then return
Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 3), () => 'Cold Cofee');

// value
Future<String> fetchUserOrder2() => Future.value('Espresso');
// error
Future<String> fetchUserOrder3() => Future.error('Out of Milk!!');

Future<void> main() async {
  // simple message , then will work after Future complete  ,
  print('Program Start');
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder2();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }
}

// O/P : -
// Program Start
// Cold Cofee
// Espresso
// done
