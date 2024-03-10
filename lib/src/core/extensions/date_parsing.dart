import 'package:intl/intl.dart';
import 'package:passguard/src/core/app.dart';

extension DateParsing on int {
  String toDateFormatted([String format = 'MM.dd.yyyy, HH:mm']) {
    return DateFormat(format, App.locale)
        .format(DateTime.fromMillisecondsSinceEpoch(this))
        .toString();
  }
}
