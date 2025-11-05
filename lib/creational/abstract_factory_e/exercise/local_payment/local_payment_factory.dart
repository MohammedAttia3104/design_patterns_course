import 'package:design_patterns_course/creational/abstract_factory_e/exercise/local_payment/cash_on_delivery.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/local_payment/mobile_payment.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method_factory.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_type.dart';

class LocalPaymentFactory implements PaymentMethodFactory {
  @override
  PaymentMethod createPaymentMethod(PaymentType type) {
    if (type == PaymentType.cashOnDelivery) {
      return CashOnDelivery();
    } else if (type == PaymentType.mobilePayment) {
      return MobilePayment();
    } else {
      throw UnsupportedError(
        'Payment type $type is not supported by LocalPaymentFactory.',
      );
    }
  }
}
