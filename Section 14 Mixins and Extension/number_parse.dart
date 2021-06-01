// should give a name to extention so it can be used anywhere
extension NumberParse on String {
  // this is pass because we are inside an extention of string therefore,
  int? toIntOrNull() => int.tryParse(this);
}
