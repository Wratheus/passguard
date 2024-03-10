import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:passguard/src/presentation/pages/auth/main.dart';
import 'package:passguard/src/presentation/pages/home/main.dart';
import 'package:passguard/src/presentation/pages/registration/main.dart';
import 'package:passguard/src/presentation/pages/settings/main.dart';

sealed class Routers {
  static FluroRouter router = FluroRouter();

  static void setup() {
    route("/auth", (_) => AuthPageMain());
    route("/registration", (_) => RegistrationPageMain());
    route("/home", (_) => HomePageMain());
    route("/setting", (_) => SettingsPageMain());
  }

  static void route(String path, Widget Function(dynamic arg) func,
      {TransitionType transitionType =
          TransitionType.cupertinoFullScreenDialog}) {
    return router.define(path,
        handler: Handler(
            handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
                func(context!.settings!.arguments)),
        transitionType: transitionType);
  }
}
