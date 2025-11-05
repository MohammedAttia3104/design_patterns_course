abstract class PaymentMethod {
  void authenticate();
  void startMoneyTransfer();
  void calculateTransactionFee(double amount);
}