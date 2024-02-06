import 'package:passguard/src/data/models/session.dart';

abstract interface class AuthRepositories {
  Future<Session> login();
}