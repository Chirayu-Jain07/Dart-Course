class Stack<T> {
  // List of item
  final List<T> _items = [];
  // push method implement
  void push(T item) => _items.add(item);
  // pop method implement
  T pop() => _items.removeLast();
}

void main() {
  // Instance of class and type int is pass a generic agru.
  final stack = Stack<int>();
  // Push in stack
  stack.push(1);
  // Push in stack
  stack.push(2);
  // pop from stack
  print(stack.pop());
  print(stack.pop());
  // Instance of class and type String is pass a generic agru.
  final names = Stack<String>();
  // Push in stack
  names.push('Chirayu');
  // Push in stack
  names.push('Kaal');
}
