class BankAcc {
  //Constructor : same name as class with parameter
  BankAcc(double balance) {
    // (this) keyword specify that, balance var of class is assigned with the value of balance from the const. parameter
    this.balance = balance;
  }
  double balance = 0;
}

void main() {
  //Instance of class and const. call
  final bank = BankAcc(5000);
  print(bank.balance);
  // Output : 5000.0
}
