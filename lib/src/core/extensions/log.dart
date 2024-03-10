import 'dart:developer' as devtools show log;

import 'package:passguard/src/core/extensions/date_parsing.dart';
import 'package:passguard/src/core/utils/enums.dart';

extension Log on Object {
  static const bool _showLog = true;
  static const bool _showTime = true;
  static const bool _showEmoji = true;

  // Уровень по умолчанию
  static const LogLevel _logLevel = LogLevel.debug;

  void log({required String name, LogLevel level = LogLevel.info}) {
    if (_showLog && _shouldLog(level)) {
      final String emoji = _showEmoji ? _getEmoji(level) : '';
      final String time = _showTime
          ? (DateTime.now().millisecondsSinceEpoch)
          .toDateFormatted('[HH:mm:ss]')
          : '';
      final String message =
          '$emoji$time[${level.name.toUpperCase()}][$name] - ${toString()}';
      devtools.log(message);
    }
  }

  String _getEmoji(LogLevel level) {
    switch (level) {
      case LogLevel.debug:
        return '🚧';
      case LogLevel.info:
        return '💬';
      case LogLevel.warning:
        return '⚠️';
      case LogLevel.error:
        return '🧨';
      case LogLevel.success:
        return '🟢';
      default:
        return '';
    }
  }

  bool _shouldLog(LogLevel level) {
    return level.index >= _logLevel.index;
  }
}
