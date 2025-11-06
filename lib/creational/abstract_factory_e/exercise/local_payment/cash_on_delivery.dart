import 'package:design_patterns_course/creational/abstract_factory_e/exercise/local_payment/local_payment_method.dart';

class CashOnDelivery implements LocalPaymentMethod {
  @override
  void authenticate() {
    print('Cash On Delivery Local Payment Authentication in progress...');
  }

  @override
  void calculateTransactionFee(double amount) {
    double fee = amount * 0.02;
    print(
      'Cash On Delivery Local Payment transaction fee for amount \$$amount is \$$fee',
    );
  }

  @override
  void startMoneyTransfer() {
    print('Starting money transfer via Cash On Delivery Local Payment...');
  }
}
