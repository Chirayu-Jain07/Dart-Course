// Class bank account create
class BankAcc {
  BankAcc({
    required this.balance,
    required this.accHolder,
  });
  // Acc. holder name
  //Mutable
  final String accHolder;
  // Balance details

  double balance = 0;
  // Deposit Method
  void deposit(double amt) {
    balance += amt;
  }

  //Withdraw method return T or F
  bool withdraw(double amt) {
    //Check if balance is grt than withdraw amt
    if (balance > amt) {
      // reduce amt from main balance
      balance -= amt;
      // bool return on success
      return true;
    } else {
      // bool return on failure
      return false;
    }
  }
}

void main() {
  // Instance of class
  final bank = BankAcc(accHolder: 'Chirayu', balance: 100);
  // bank.accHolder = 'Cj'; can't be done as it is mutable
  //Instance Method call
  bank.deposit(100);
  //Instance Method call
  bank.deposit(100);
  //Instance Method call
  bank.deposit(100);
  // print balnance
  print(bank.balance);
  // Instance Method call
  print(bank.withdraw(150));
  // print balnance
  print(bank.balance);
}

// Output
// 300.0
// true
// 150.0
