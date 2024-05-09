import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:passguard/src/core/router/routes.dart';
import 'package:passguard/src/core/services/database/database.dart';
import 'package:passguard/src/core/utils/rsa_provider.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/data/models/auth/user.dart';
import 'package:passguard/src/data/models/build.dart';
import 'package:passguard/src/data/models/personalization_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helpers/storage.dart';

final class App {
  static DatabaseService db = DatabaseService();
  static final Dio dio = Dio();
  static Build? buildPath;
  static SharedPreferences? localStorage;
  static String? token;
  static User? user;
  static String? locale = StorageHelper.lang;
  static late GlobalKey<NavigatorState> rootWidgetKey;
  static PersonalizationApp personalizationApp =
      PersonalizationApp(themeMode: StorageHelper.themeMode);

  static Future<void> init() async {
    localStorage = await SharedPreferences.getInstance();
    rootWidgetKey = GlobalKey<NavigatorState>();
    RSAProvider.init();
    Routers.setup();

    if (App.locale == null) {
      LocaleSettings.useDeviceLocale();
    } else {
      LocaleSettings.setLocaleRaw(App.locale!);
    }
  }
}
