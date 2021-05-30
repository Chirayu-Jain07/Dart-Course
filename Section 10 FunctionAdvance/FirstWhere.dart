void main() {
  const list = [1, 2, 3, 4];
  final val = list.firstWhere(
    (value) => value == 4,
    orElse: () => -1,
  );
  print(val);
}
