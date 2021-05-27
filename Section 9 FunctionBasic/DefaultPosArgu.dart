void main() {
  foo(1, 3);
}

//Default postional argument foo([int b = 0]);
void foo(int a, [int b = 0]) {
  print('a: $a , b:$b');
}
