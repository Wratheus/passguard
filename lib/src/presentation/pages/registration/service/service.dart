import 'package:flutter/cupertino.dart';
import 'package:passguard/src/core/router/navigator.dart';

final class RegistrationPageService {
  Future<void> onRegister(BuildContext context) async {}
  Future<void> onLogin(BuildContext context) async => await NavigatorPage.login(context);
}
