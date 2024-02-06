import 'package:passguard/src/data/models/session.dart';

abstract interface class UserRepositories {
  Future<bool> updatePassword();
  Future<bool> logout();
}