import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();
  static Future<bool> hasBiometric() async {
    try {
      return _auth.canCheckBiometrics;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometric();
    if (!isAvailable) return false;
    try {
      return await _auth.authenticate(
          authMessages: [],
          localizedReason: "asasas",
          options: const AuthenticationOptions(
            useErrorDialogs: true,
            biometricOnly: true,
            sensitiveTransaction: true,
            stickyAuth: true,
          ));
    } catch (e) {
      return false;
    }
  }
}
