class Temperature {
  //Named Constructor
  Temperature.celsius(this.celsius);
  //Named Constructor here celsius is storge variable
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;
  double celsius;
  // Getter to get value in farenhiet , a get var. should have a body
  double get farenheit => celsius * 1.8 + 32;
  set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
}

void main() {
  final temp1 = Temperature.celsius(30);
  final temp2 = Temperature.farenheit(90);
  print(temp1.celsius);
  temp1.farenheit = 90;
}
// Output
// 30.0
// 32.22222222222222
