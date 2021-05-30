class Complex {
  // If a class has all const variable then use const constr. to
  const Complex(this.re, this.img);
  // Named Constru. + intializer list
  const Complex.zero()
      : re = 0,
        img = 0;
  // Named Constru. + intializer list
  const Complex.identity()
      : re = 1,
        img = 0;
  // Named Constru. + intializer list
  const Complex.real(this.re) : img = 0;
  // Named Constru. + intializer list
  const Complex.imaginary(this.img) : re = 0;
  final double re;
  final double img;
}

void main() {
  // Some special complex number
  // 0 + i*0
  final zero = Complex.zero();
  final identity = Complex.identity();
  final rea = Complex.real(5);
}
