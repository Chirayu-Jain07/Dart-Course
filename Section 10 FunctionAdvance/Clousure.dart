void main() {
  const multiplier = 10;
  const list = [1, 2, 3];
  //(x) => x * multiplier is transformed to this
  final result = list.map((x) {
    return x * multiplier;
  });
  print(result);
}
