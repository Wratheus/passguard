abstract interface class UserRepositories {
  Future<bool> updatePassword();
  Future<bool> logout();
}