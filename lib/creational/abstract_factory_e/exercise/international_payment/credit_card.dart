import 'package:design_patterns_course/creational/abstract_factory_e/exercise/international_payment/international_payment_method.dart';

class CreditCard implements InternationalPaymentMethod {
  @override
  void authenticate() {
    print('Authenticating via Credit Card...');
  }

  @override
  void calculateTransactionFee(double amount) {
    double fee = amount * 0.025;
    print('Credit Card transaction fee for amount \$$amount is \$$fee');
  }

  @override
  void startMoneyTransfer() {
    print('Starting money transfer via Credit Card...');
  }
}
