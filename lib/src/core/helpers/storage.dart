import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/core/helpers/lib.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

sealed class StorageHelper {
  static SettingThemeMode get themeMode {
    SettingThemeMode? theme;
    String? varThemeMode = _get('themeMode', null);
    if (varThemeMode != null) {
      theme = LibHelper.enumFromString<SettingThemeMode>(
          SettingThemeMode.values, varThemeMode);
    }

    return theme ?? SettingThemeMode.light;
  }

  static set themeMode(SettingThemeMode value) =>
      _set('themeMode', LibHelper.enumToString(type: value));

  static String? get lang => _get('lang', null);

  static set lang(String? value) {
    App.locale = value;
    _set('lang', value);
  }

  static T? _get<T>(a, b) {
    try {
      return App.localStorage != null && App.localStorage!.get(a) != null
          ? App.localStorage!.get(a)
          : b;
    } catch (e) {
      return b;
    }
  }

  static Future<Object> _set(String key, dynamic value) async {
    SharedPreferences? sp = App.localStorage;
    return switch (value.runtimeType) {
      const (int) => sp!.setInt(key, value),
      const (String) => sp!.setString(key, value),
      const (bool) => sp!.setBool(key, value),
      const (double) => sp!.setDouble(key, value),
      _ => false
    };
  }
}
