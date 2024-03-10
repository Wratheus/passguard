import 'package:passguard/src/core/router/params/params.dart';

final class AuthParams extends RouteParams {
  bool notify;

  String notifyTitle = '';

  String notifyDescript = '';

  AuthParams(
      {this.notify = false, this.notifyTitle = '', this.notifyDescript = ''});
}
