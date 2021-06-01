Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  // we should await for string to return all value
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Future<int> sumStreamRed(Stream<int> stream) =>
    stream.reduce((prev, element) => prev + element);
//  async* : asynchronous generator
Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    // we can call yield multiple times to generate a Stream
    // Some asynchronous work
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i;
  }
}

Future<void> main() async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  final stream2 = countStream(5);
  final sum = await sumStream(stream2);
  print('Sum :  $sum'); // Sum :  15
}
