void main() {
  const list = [1, 2, 3, 4];
  final List<int> doubles = list.map((e) => e * 2).toList();
  print(doubles);
}
