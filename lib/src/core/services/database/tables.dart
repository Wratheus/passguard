import 'package:drift/drift.dart';
@DataClassName('UserAuthLastData')
class UserAuthLast extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get authHash => text()();

  TextColumn get photo => text().nullable()();

  TextColumn get name => text()();
}
