import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/utils/enums.dart';

final class Build {
  final int id;
  final String name;
  final String descript;
  final int date;

  const Build(
      {required this.id,
        required this.name,
        required this.descript,
        required this.date});

  static Build? fromJson(dynamic json) {
    try {
      return Build(
          id: json['id'],
          name: json['name'],
          descript: json['descript'],
          date: json['date']);
    } catch (e) {
      if (json != null) {
        e.log(name: "Build.fromJson()", level: LogLevel.warning);
      }
      return null;
    }
  }

  @override
  String toString() {
    return 'Build(id: $id, name: $name, descript: $descript, date: $date)';
  }
}
