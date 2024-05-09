import 'package:flutter/material.dart';

sealed class NavigatorPage {
  static Future login(BuildContext context) async {
    return await Navigator.of(context)
        .pushNamedAndRemoveUntil('/', (Route route) => false);
  }

  static Future registration(BuildContext context) async =>
      await Navigator.of(context).pushNamed('/registration', arguments: null);

  static Future settings(BuildContext context) async =>
      await Navigator.of(context).pushNamed('/settings', arguments: null);

  static Future home(BuildContext context) async =>
      await Navigator.of(context).pushNamed('/home', arguments: null);
}
