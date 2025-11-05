import 'package:design_patterns_course/creational/factory/exercise/authentication_factory.dart';

import 'authentication/authentication_type.dart';

/// Factory Coding Exercise
/// You are developing a web application that supports user authentication through various methods,
/// such as username/password, social media logins, and two-factor authentication.
/// Initially, we need to have a centralized place for creating those authentications,
/// considering that social media logins might have in the future various kinds of
/// social media and two-factor authentication as well.

void main() {
  final factory = AuthenticationFactory.createAuthenticationMethod(
    AuthenticationType.CREDENTIALS,
    email: 'mohamed',
    password: ' 12345,',
  );

  factory.authenticate();

  final socialFactory = AuthenticationFactory.createAuthenticationMethod(
    AuthenticationType.SOCIAL_MEDIA,
    provider: 'Google',
  );

  socialFactory.authenticate();
}
