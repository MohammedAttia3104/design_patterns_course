import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_type.dart';

abstract class PaymentMethodFactory {
  PaymentMethod createPaymentMethod(PaymentType type);
}