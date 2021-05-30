void main() {
  const list = [1, 2, 3, 4];
  //As per question
  final check = firstWhere<int>(list, (x) => x == 5, orElse: () => -1);
  print(check);
}

//Generic Function
T firstWhere<T>(List<T> element, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in element) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}
