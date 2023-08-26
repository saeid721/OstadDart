abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: ${amount.toStringAsFixed(2)}");
      print("Current Balance: ${balance.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
        balance += (balance * interestRate);
        print("Withdrawn: ${amount.toStringAsFixed(2)}");
        print("Current Balance: ${balance.toStringAsFixed(2)}");
      } else {
        print("Insufficient funds for withdrawal.");
      }
    } else {
      print("Invalid withdrawal amount.");
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount > 0) {
      if (balance + overdraftLimit >= amount) {
        balance -= amount;
        print("Withdrawn: ${amount.toStringAsFixed(2)}");
        print("Current Balance: ${balance.toStringAsFixed(2)}");
      } else {
        print("Insufficient funds for withdrawal.");
      }
    } else {
      print("Invalid withdrawal amount.");
    }
  }
}

void main() {
  // Create a SavingsAccount instance
  var savingsAccount = SavingsAccount(12345, 1000.0, 0.05);
  print("Savings Account:");
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(200.0);

  // Create a CurrentAccount instance
  var currentAccount = CurrentAccount(54321, 2000.0, 1000.0);
  print("\nCurrent Account:");
  currentAccount.deposit(300.0);
  currentAccount.withdraw(1200.0);
}
