import 'package:passguard/src/core/services/http.dart';
import 'package:passguard/src/data/models/build.dart';
import 'package:passguard/src/data/models/client_send_options.dart';

sealed class AppRequests {
  static Future<Build?> checkUpdate({ClientSendOptions? options}) async {
    return await HttpService.send(
            method: "app/checkUpdate", options: options, errorNotify: false)
        .then((response) => Build.fromJson(response));
  }
}
