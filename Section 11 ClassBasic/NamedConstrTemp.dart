class Temperature {
  //Named Constructor
  Temperature.celsius(this.celsius);
  //Named Constructor
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;
  double celsius;
}

void main() {
  final temp1 = Temperature.celsius(30);
  final temp2 = Temperature.farenheit(90);
  print(temp1.celsius);
  print(temp2.celsius);
}
// Output
// 30.0
// 32.22222222222222
