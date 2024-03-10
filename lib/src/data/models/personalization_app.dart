import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/helpers/lib.dart';
import 'package:passguard/src/core/helpers/storage.dart';
import 'package:passguard/src/core/utils/enums.dart';

final class PersonalizationApp {
  final SettingThemeMode themeMode;
  final SettingTextSize textSize;

  const PersonalizationApp(
      {this.themeMode = SettingThemeMode.light,
      this.textSize = SettingTextSize.standart});

  static PersonalizationApp? fromJson(dynamic json) {
    try {
      SettingThemeMode? themeMode =
          LibHelper.enumFromString(SettingThemeMode.values, json['themeMode']);
      SettingTextSize? textSize =
          LibHelper.enumFromString(SettingTextSize.values, json['textSize']);

      return PersonalizationApp(
          themeMode: themeMode ?? StorageHelper.themeMode,
          textSize: textSize ?? StorageHelper.textSize);
    } catch (e) {
      e.log(name: "PersonalizationApp.fromJson()", level: LogLevel.warning);

      return null;
    }
  }

  Map<String, dynamic>? toJson() {
    return {
      "themeMode": LibHelper.enumToString(type: themeMode),
      "textSize": LibHelper.enumToString(type: textSize)
    };
  }

  @override
  String toString() =>
      'PersonalizationApp(themeMode: $themeMode, textSize: $textSize)';

  PersonalizationApp copyWith({
    SettingThemeMode? themeMode,
    SettingTextSize? textSize,
  }) {
    return PersonalizationApp(
      themeMode: themeMode ?? this.themeMode,
      textSize: textSize ?? this.textSize,
    );
  }
}
