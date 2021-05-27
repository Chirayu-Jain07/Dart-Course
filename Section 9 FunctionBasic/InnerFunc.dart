const global = 100;
void main() {
  const a = 10;
  print(global);
  print(a);
  void foo(int b) {
    print(global);
  }
}
