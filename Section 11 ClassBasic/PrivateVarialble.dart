class BankAcc {
  BankAcc(this._balance);
  // Private balance var
  double _balance;
  // public getter var
  double get balance => _balance;

  void deposit(double amt) {
    _balance += amt;
  }
}
