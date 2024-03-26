// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UserAuthLastTable extends UserAuthLast
    with TableInfo<$UserAuthLastTable, UserAuthLastData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserAuthLastTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _authHashMeta =
      const VerificationMeta('authHash');
  @override
  late final GeneratedColumn<String> authHash = GeneratedColumn<String>(
      'auth_hash', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _photoMeta = const VerificationMeta('photo');
  @override
  late final GeneratedColumn<String> photo = GeneratedColumn<String>(
      'photo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, authHash, photo, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_auth_last';
  @override
  VerificationContext validateIntegrity(Insertable<UserAuthLastData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('auth_hash')) {
      context.handle(_authHashMeta,
          authHash.isAcceptableOrUnknown(data['auth_hash']!, _authHashMeta));
    } else if (isInserting) {
      context.missing(_authHashMeta);
    }
    if (data.containsKey('photo')) {
      context.handle(
          _photoMeta, photo.isAcceptableOrUnknown(data['photo']!, _photoMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserAuthLastData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserAuthLastData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      authHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}auth_hash'])!,
      photo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}photo']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $UserAuthLastTable createAlias(String alias) {
    return $UserAuthLastTable(attachedDatabase, alias);
  }
}

class UserAuthLastData extends DataClass
    implements Insertable<UserAuthLastData> {
  final int id;
  final String authHash;
  final String? photo;
  final String name;
  const UserAuthLastData(
      {required this.id,
      required this.authHash,
      this.photo,
      required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['auth_hash'] = Variable<String>(authHash);
    if (!nullToAbsent || photo != null) {
      map['photo'] = Variable<String>(photo);
    }
    map['name'] = Variable<String>(name);
    return map;
  }

  UserAuthLastCompanion toCompanion(bool nullToAbsent) {
    return UserAuthLastCompanion(
      id: Value(id),
      authHash: Value(authHash),
      photo:
          photo == null && nullToAbsent ? const Value.absent() : Value(photo),
      name: Value(name),
    );
  }

  factory UserAuthLastData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserAuthLastData(
      id: serializer.fromJson<int>(json['id']),
      authHash: serializer.fromJson<String>(json['authHash']),
      photo: serializer.fromJson<String?>(json['photo']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'authHash': serializer.toJson<String>(authHash),
      'photo': serializer.toJson<String?>(photo),
      'name': serializer.toJson<String>(name),
    };
  }

  UserAuthLastData copyWith(
          {int? id,
          String? authHash,
          Value<String?> photo = const Value.absent(),
          String? name}) =>
      UserAuthLastData(
        id: id ?? this.id,
        authHash: authHash ?? this.authHash,
        photo: photo.present ? photo.value : this.photo,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('UserAuthLastData(')
          ..write('id: $id, ')
          ..write('authHash: $authHash, ')
          ..write('photo: $photo, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, authHash, photo, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserAuthLastData &&
          other.id == this.id &&
          other.authHash == this.authHash &&
          other.photo == this.photo &&
          other.name == this.name);
}

class UserAuthLastCompanion extends UpdateCompanion<UserAuthLastData> {
  final Value<int> id;
  final Value<String> authHash;
  final Value<String?> photo;
  final Value<String> name;
  const UserAuthLastCompanion({
    this.id = const Value.absent(),
    this.authHash = const Value.absent(),
    this.photo = const Value.absent(),
    this.name = const Value.absent(),
  });
  UserAuthLastCompanion.insert({
    this.id = const Value.absent(),
    required String authHash,
    this.photo = const Value.absent(),
    required String name,
  })  : authHash = Value(authHash),
        name = Value(name);
  static Insertable<UserAuthLastData> custom({
    Expression<int>? id,
    Expression<String>? authHash,
    Expression<String>? photo,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (authHash != null) 'auth_hash': authHash,
      if (photo != null) 'photo': photo,
      if (name != null) 'name': name,
    });
  }

  UserAuthLastCompanion copyWith(
      {Value<int>? id,
      Value<String>? authHash,
      Value<String?>? photo,
      Value<String>? name}) {
    return UserAuthLastCompanion(
      id: id ?? this.id,
      authHash: authHash ?? this.authHash,
      photo: photo ?? this.photo,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (authHash.present) {
      map['auth_hash'] = Variable<String>(authHash.value);
    }
    if (photo.present) {
      map['photo'] = Variable<String>(photo.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserAuthLastCompanion(')
          ..write('id: $id, ')
          ..write('authHash: $authHash, ')
          ..write('photo: $photo, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$DatabaseService extends GeneratedDatabase {
  _$DatabaseService(QueryExecutor e) : super(e);
  late final $UserAuthLastTable userAuthLast = $UserAuthLastTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userAuthLast];
}
