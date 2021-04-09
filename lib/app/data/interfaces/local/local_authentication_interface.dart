import 'package:isee/app/data/models/credentials.dart';

abstract class LocalAuthenticationInterface {
  void setSession(Credentials credentials);
  Future<Credentials> getSession();
  void clearSession();
}
