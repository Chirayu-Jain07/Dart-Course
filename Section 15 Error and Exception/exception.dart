// Class fraction
class Fraction {
  //check for divide by zero error
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }
  final int numerator;
  final int denominator;
  // value of division
  double get value => numerator / denominator;
}

// test function
void testFraction() {
  // instance and print inside the try block to get any exception
  try {
    final f = Fraction(3, 0);
    print(f.value);
    // on is used to check for the particular exception, catch will hold the case for exception
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
    // rethrow;
  } on Exception catch (e) {
    print(e);
    // finally will work in all case, i.e. any piece of code you wish to run after exception you can do so
  } finally {
    print('testFraction done');
  }
}

void main() {
  testFraction();
}

// Ouput
// IntegerDivisionByZeroException
// testFraction done
