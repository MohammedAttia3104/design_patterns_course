import 'package:design_patterns_course/creational/abstract_factory_e/exercise/international_payment/bank_transfer.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/international_payment/credit_card.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/international_payment/paypal.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method.dart';
import 'package:design_patterns_course/creational/abstract_factory_e/exercise/payment_method_factory.dart';

import '../payment_type.dart';

class InternationalPaymentFactory implements PaymentMethodFactory {
  @override
  PaymentMethod createPaymentMethod(PaymentType type) {
    if (type == PaymentType.paypal) {
      return Paypal();
    } else if (type == PaymentType.creditCard) {
      return CreditCard();
    } else if (type == PaymentType.bankTransfer) {
      return BankTransfer();
    } else {
      throw UnsupportedError(
        'Payment type $type is not supported by InternationalPaymentFactory.',
      );
    }
  }
}
