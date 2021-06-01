// class PositiveInt  for checking positive number
class PositiveInt {
  // give an assert message on negative value
  const PositiveInt(this.value)
      : assert(value >= 0, 'Value cannot be negative');
  final int value;
}

void signIn(String email, String password) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

void main() {
  // Error out of range
  const list = [1, 2, 3];
  print(list[4]);
}
