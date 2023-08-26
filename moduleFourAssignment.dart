/*
Define an abstract class Account with the following properties:
●       accountNumber (integer)
●       balance (double)

It should also have the following methods:
●       deposit(double amount): Adds the specified amount to the account balance.
●       withdraw(double amount): Abstract method that deducts the specified amount from the account balance.

Define a class SavingsAccount that extends the Account class. It should have an additional property called interestRate (double).
Implement the withdraw() method in the SavingsAccount class as follows:
●       Subtract the specified amount from the account balance.
●       Apply the interest rate to the remaining balance.
Define a class CurrentAccount that extends the Account class. It should have an additional property called overdraftLimit (double).

Implement the withdraw() method in the CurrentAccount class as follows:

●       Allow withdrawals up to the overdraft limit.
●       If the withdrawal amount exceeds the overdraft limit, print a message indicating insufficient funds.
In main()
●       Create an instance of the SavingsAccount class by providing values for the account number, initial balance, and interest rate.
●       Use the instance to perform operations like depositing and withdrawing money.
●       Create an instance of the CurrentAccount class by providing values for the account number, initial balance, and overdraft limit.
●       Use the instance to perform operations like depositing and withdrawing.

 */

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
