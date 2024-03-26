import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/services/database/tables.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  UserAuthLast
])
final class DatabaseService extends _$DatabaseService {
  DatabaseService() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<bool> deleteDb() async {
    await App.db.close();
    Directory dir =
        Directory("${(await getApplicationSupportDirectory()).path}/database/");
    try {
      if (await dir.exists()) {
        await dir.delete(recursive: true);
      }
      App.db = DatabaseService();
      return true;
    } catch (e) {
      e.log(name: "AppDatabase.deleteFolder()", level: LogLevel.error);
      return false;
    }
  }

  Future<bool> clearDb() async {
    try {
      return await App.db.transaction(() async {
        await App.db.customStatement('PRAGMA foreign_keys = OFF');
        for (final TableInfo<Table, Object?> table in App.db.allTables) {
          await App.db.delete(table).go();
        }
        return true;
      });
    } catch (e) {
      e.log(name: "AppDatabase.clearDb()", level: LogLevel.error);
      return false;
    } finally {
      await App.db.customStatement('PRAGMA foreign_keys = ON');
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(
    () async {
      final Directory dbFolder = await getApplicationSupportDirectory();
      dbFolder.toString().log(name: "drift._openConnection()");
      final File file = File(
        p.join("${dbFolder.path}/database/", 'tsd'),
      );
      return NativeDatabase.createInBackground(file);
    },
  );
}
