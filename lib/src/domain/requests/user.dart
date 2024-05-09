import 'package:dio/dio.dart';
import 'package:passguard/src/core/services/http.dart';
import 'package:passguard/src/data/models/client_send_options.dart';

sealed class UserRequests {
  static Future<Response> login(
      {required String password,
      required String login,
      ClientSendOptions? options}) async {
    return await HttpService.send(
        method: "user/login",
        options: options,
        queryParameters: {"password": password, "login": login});
  }
}
