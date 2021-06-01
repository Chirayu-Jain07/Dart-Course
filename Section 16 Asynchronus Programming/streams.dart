Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  // we should await for string to return all value
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

/* with reduce method
  here we don't need to type async
  Stream.reduce wait for each event to become avaliable before calling the combine function
  same as iterable .reduce
  since this func return future and reduce also return future we don't need to write await*/
Future<int> sumStreamRed(Stream<int> stream) =>
    stream.reduce((prev, element) => prev + element);
Future<void> main() async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  final sum = await sumStream(stream);
  print('Sum :  $sum');
}
