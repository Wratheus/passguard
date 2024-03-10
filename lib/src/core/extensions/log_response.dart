import 'package:dio/dio.dart';
import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/utils/enums.dart';

extension LogResponseExtenstion on Response {
  String logResponse() {
    if (data is Object) {
      (data as Object).log(name: "Response data", level: LogLevel.info);
    } else {
      "Response data is not a subtype of $Object"
          .log(name: "Response data", level: LogLevel.warning);
    }
    return 'Response params {requestOptions: ${requestOptions._logRequestOptions()}, statusCode: $statusCode, statusMessage: $statusMessage, isRedirect: $isRedirect}';
  }
}

extension LogRequestOptions on RequestOptions {
  String _logRequestOptions() {
    return 'RequestOptions{data: ${data.toString()}, dataType: ${data.runtimeType}';
  }
}
