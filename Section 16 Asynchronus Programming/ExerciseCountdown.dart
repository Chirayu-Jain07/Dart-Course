// countdown function
Future<void> countdown(int n) async {
  // iterate throw n and display result
  for (int i = n; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 2), () => print(i));
  }
}

Future<void> main() async {
  await countdown(5);
}

// O/P
// 5
// 4
// 3
// 2
// 1
// 0
