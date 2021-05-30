void main() {
  const list = [1, 2, 3, 4];

  final sum = list.reduce((value, element) => value + element);
  // Value : 1 3 6 10
  // Elemt : 2 3 4
  print(sum);
}
