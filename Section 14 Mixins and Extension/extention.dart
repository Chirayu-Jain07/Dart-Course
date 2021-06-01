extension NumberParse on String {
  // this is pass because we are inside an extention of string
  int? toIntOrNull() => int.tryParse(this);
}

void main() {
  int.tryParse('123');
  '123'.toIntOrNull();
}
