import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/helpers/lib.dart';
import 'package:passguard/src/core/helpers/storage.dart';
import 'package:passguard/src/core/utils/enums.dart';

final class PersonalizationApp {
  final SettingThemeMode themeMode;
  const PersonalizationApp({this.themeMode = SettingThemeMode.light});

  static PersonalizationApp? fromJson(dynamic json) {
    try {
      SettingThemeMode? themeMode =
          LibHelper.enumFromString(SettingThemeMode.values, json['themeMode']);
      return PersonalizationApp(
          themeMode: themeMode ?? StorageHelper.themeMode);
    } catch (e) {
      e.log(name: "PersonalizationApp.fromJson()", level: LogLevel.warning);

      return null;
    }
  }

  Map<String, dynamic>? toJson() {
    return {
      "themeMode": LibHelper.enumToString(type: themeMode),
    };
  }

  @override
  String toString() =>
      'PersonalizationApp(themeMode: $themeMode)';

  PersonalizationApp copyWith({
    SettingThemeMode? themeMode,
    SettingTextSize? textSize,
  }) {
    return PersonalizationApp(themeMode: themeMode ?? this.themeMode);
  }
}
