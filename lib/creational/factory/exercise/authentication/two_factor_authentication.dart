import 'package:design_patterns_course/creational/factory/exercise/authentication_method.dart';

class TwoFactorAuthentication implements AuthenticationMethod {
  TwoFactorAuthentication();

  @override
  void authenticate() {
    print('Two-Factor Authentication in progress...');
  }
}
