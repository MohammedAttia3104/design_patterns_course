import 'package:design_patterns_course/creational/factory/exercise/authentication_method.dart';

class SocialMediaAuthentication implements AuthenticationMethod {
  final String provider;

  SocialMediaAuthentication(this.provider);

  @override
  void authenticate() {
    print('Social Media Authenticating with provider: $provider');
  }
}
