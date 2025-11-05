import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method_factory.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_type.dart';

class PaymentProcessor {
  final PaymentMethodFactory factory;

  PaymentProcessor(this.factory);

   void processPayment(double amount, PaymentType paymentType) {
    final paymentMethod = factory.createPaymentMethod(paymentType);

    paymentMethod.authenticate();
    paymentMethod.calculateTransactionFee(amount);
    paymentMethod.startMoneyTransfer();
  }
}
