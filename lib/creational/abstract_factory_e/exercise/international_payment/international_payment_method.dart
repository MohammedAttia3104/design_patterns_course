import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method.dart';

abstract class InternationalPaymentMethod implements PaymentMethod {
  @override
  void authenticate();

  @override
  void startMoneyTransfer();

  @override
  void calculateTransactionFee(double amount);
}
