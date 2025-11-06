import 'package:design_patterns_course/creational/factory/exercise/authentication/authentication_type.dart';

import 'authentication/credentials_authentication.dart';
import 'authentication/social_media_authentication.dart';
import 'authentication/two_factor_authentication.dart';
import 'authentication_method.dart';

class AuthenticationFactory {
  static AuthenticationMethod createAuthenticationMethod(
    AuthenticationType type, {
    String? email,
    String? password,
    String? provider,
  }) {
    switch (type) {
      case AuthenticationType.CREDENTIALS:
        if (email != null && password != null) {
          return CredentialsAuthentication(email, password);
        }
        throw ArgumentError(
          'Email and password must be provided for credentials authentication.',
        );
      case AuthenticationType.SOCIAL_MEDIA:
        if (provider != null) {
          return SocialMediaAuthentication(provider);
        }
        throw ArgumentError(
          'Provider must be provided for social media authentication.',
        );
      case AuthenticationType.TWO_FACTOR:
        return TwoFactorAuthentication();
    }
  }
}
