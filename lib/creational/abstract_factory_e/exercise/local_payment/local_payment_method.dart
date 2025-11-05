import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method.dart';

abstract class LocalPaymentMethod implements PaymentMethod {
  @override
  void authenticate();

  @override
  void calculateTransactionFee(double amount);

  @override
  void startMoneyTransfer();
}
