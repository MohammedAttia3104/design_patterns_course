import 'package:design_patterns_course/creational/abstract_factory_e/exercise/local_payment/local_payment_method.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method.dart';

class MobilePayment implements LocalPaymentMethod{
  @override
  void authenticate() {
    print('Mobile Local Payment Authentication in progress...');
  }

  @override
  void calculateTransactionFee(double amount) {
    double fee = amount * 0.015;
    print('Mobile Local Payment transaction fee for amount \$$amount is \$$fee');
  }

  @override
  void startMoneyTransfer() {
    print('Starting money transfer via Mobile Local Payment...');
  }
}