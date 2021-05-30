class Complex {
  // If a class has all const variable then use const constr. to
  const Complex(this.re, this.img);
  final double re;
  final double img;
}

void main() {
  // As we have const constru. so we can make instance of const type
  const complex = Complex(1, 2);
  print("$complex.re, $complex.img");
  // const list can have n number of const constru.
  const list = [
    Complex(2, 4),
    Complex(12, 15),
  ];
}
