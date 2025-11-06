import 'package:design_patterns_course/creational/factory/exercise/authentication_method.dart';

class CredentialsAuthentication implements AuthenticationMethod{
  final String email;
  final String password;


  CredentialsAuthentication(this.email, this.password);

  @override
  void authenticate() {
    print('Credentials Authenticating with email: $email and password: $password');
  }
}