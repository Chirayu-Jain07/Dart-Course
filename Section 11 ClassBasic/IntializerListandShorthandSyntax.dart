class BankAcc {
  // add constru. argu. and intialize member variable in the intializer list
  BankAcc({
    required String accHolder,
    double balance = 0,
  })  : accHolder = accHolder,
        balance = balance;
//Short hand for above code is BankAcc({required this.accHolder, this.balance})
  String accHolder;
  double balance;
}
