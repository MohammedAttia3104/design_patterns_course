import 'package:design_patterns_course/creational/abstract_factory_e/exercise/international_payment/international_payment_method.dart';

class BankTransfer implements InternationalPaymentMethod{
  @override
  void authenticate() {
    print('Authenticating via Bank Transfer...');
  }

  @override
  void calculateTransactionFee(double amount) {
    final fee = 5.0;
    print('Bank Transfer transaction fee for amount \$$amount is \$$fee');
  }

  @override
  void startMoneyTransfer() {
    print('Starting money transfer via Bank Transfer...');
  }
}