import 'package:design_patterns_course/creational/abstract_factory_e/exercise/international_payment/international_payment_factory.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/local_payment/local_payment_factory.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_processor.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_type.dart';

void main() {
  PaymentProcessor processor = PaymentProcessor(LocalPaymentFactory());
  processor.processPayment(100, PaymentType.cashOnDelivery);

  print('==========================================================');

  PaymentProcessor processor2 = PaymentProcessor(InternationalPaymentFactory());
  processor2.processPayment(200, PaymentType.creditCard);
}
