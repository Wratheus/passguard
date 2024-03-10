import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/data/models/auth/user.dart';
import 'package:passguard/src/data/models/personalization_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helpers/storage.dart';

// TODO add drift local DB
// TODO remove unused LOCALES
// TODO add MODALS presentation
// TODO LOOKUP THEME remove unused, refactor
// TODO add CLIENT SEND OPTIONS FOR DIO
final class App {
  static final Dio dio = Dio();
  static SharedPreferences? localStorage;
  static String? token;
  static User? user;
  static String? locale = StorageHelper.lang;
  static late final GlobalKey<NavigatorState> rootWidgetKey;
  static PersonalizationApp personalizationApp = PersonalizationApp(
      themeMode: StorageHelper.themeMode, textSize: StorageHelper.textSize);

  static Future<void> init() async {
    localStorage = await SharedPreferences.getInstance();
    rootWidgetKey = GlobalKey<NavigatorState>();

    if (App.locale == null) {
      LocaleSettings.useDeviceLocale();
    } else {
      LocaleSettings.setLocaleRaw(App.locale!);
    }
  }
  // todo implement reset
  static void reset() {}
}
