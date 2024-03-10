import 'package:flutter/material.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/core/router/params/auth.dart';

sealed class NavigatorPage {
  static Future auth(BuildContext context, [AuthParams? params]) async {
    /// reset App Access
    App.reset();
    return await Navigator.of(context).pushNamedAndRemoveUntil(
        '/start', (Route route) => false,
        arguments: params);
  }

  static Future registration(BuildContext context) async =>
      await Navigator.of(context).pushNamed('/registration', arguments: null);

  static Future settings(BuildContext context) async =>
      await Navigator.of(context).pushNamed('/settings', arguments: null);

  static Future home(BuildContext context) async =>
      await Navigator.of(context).pushNamed('/home', arguments: null);
}
