import 'package:flutter/cupertino.dart';
import 'package:passguard/src/core/router/navigator.dart';

final class HomePageService {
  Future<void> settings(BuildContext context) async =>
      await NavigatorPage.settings(context);
}
