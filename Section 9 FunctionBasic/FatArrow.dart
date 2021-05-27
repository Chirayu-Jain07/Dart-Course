void main() {
  final total = sum(10, 20);
  print(total);
  printSum(30, 40);
}

int sum(int x, int y) => x + y;
void printSum(int x, int y) => print(x + y);
