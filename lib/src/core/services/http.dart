import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/configs/app.dart';
import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/extensions/log_response.dart';
import 'package:passguard/src/core/helpers/lib.dart';
import 'package:passguard/src/core/services/ui.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/data/models/client_send_options.dart';

sealed class HttpService {
  static Future send({
    required String method,
    Map<String, dynamic>? queryParameters,
    ClientSendOptions? options,
    bool errorNotify = true,
  }) async {
    options ??= const ClientSendOptions();
    if (options.overlayLoader) {
      await UiService.showLoader(cancelToken: options.cancelToken);
    }
    Response<dynamic> response = await App.dio
        .post('${AppConfig.domainApi}/$method',
            data: jsonEncode(_queryParameters(queryParameters)),
            cancelToken: options.cancelToken)
        .catchError(
      (e) async {
        return Response(
          requestOptions: RequestOptions(),
          statusCode: 400,
          statusMessage: e.toString(),
        );
      },
    ).timeout(
      const Duration(seconds: 40),
      onTimeout: () async {
        return Response(
            requestOptions: RequestOptions(),
            statusCode: 408,
            statusMessage: t.requestTimeOut);
      },
    );

    "PARAMS: $queryParameters"
        .log(name: "${AppConfig.domainApi}/$method", level: LogLevel.info);
    response
        .logResponse()
        .log(name: "${AppConfig.domainApi}/$method", level: LogLevel.info);
    if (options.overlayLoader) {
      await UiService.hideLoader();
    }

    if (options.cancelToken != null) {
      if (options.cancelToken!.isCancelled) {
        "Отмененное действие".log(name: "HttpService.send()");
        return false;
      }
    }

    if (response.statusCode != 200) {
      return await _error(
          snackDuration: 10,
          snackBarAction: SnackBarAction(
            textColor: Colors.white.withOpacity(.6),
            label: t.more,
            onPressed: () {
              UiService.showConfirm(App.rootWidgetKey.currentContext!,
                  title: t.errorDetails,
                  message: response.statusMessage ?? t.mistake,
                  alert: true);
            },
          ),
          message: t.requestCannotExecuted,
          notify: errorNotify);
    }

    Map<String, dynamic> responseData = jsonDecode(response.data);

    if (responseData.isNotEmpty) {
      await _message(responseData['message'] ?? [], errorNotify: errorNotify);

      if (responseData['success']) {
        if (responseData['data'] == null) {
          return true;
        } else {
          return responseData['data'].isNotEmpty ? responseData['data'] : true;
        }
      }
      return false;
    } else {
      return await _error(
          message: t.invalidResponseFromServer, notify: errorNotify);
    }
  }

  /// Выводим сообщения из api
  static Future<void> _message(List messages, {bool errorNotify = true}) async {
    for (dynamic element in messages) {
      TypeMessage? type = LibHelper.enumFromString<TypeMessage>(
          TypeMessage.values, element['type']);

      if (!errorNotify && type == TypeMessage.error) {
        continue;
      }
      if (element["view"] == 'toast') {
        UiService.showSnack(App.rootWidgetKey.currentContext,
            text: element['text'], type: type);
      } else if (element["view"] == 'dialog') {
        await UiService.notify(App.rootWidgetKey.currentContext,
            title: t.notification, message: element['text'], type: type);
      }
    }
  }

  /// Выводим ошибки из api
  static Future<bool> _error(
      {required String message,
      String type = 'snack',
      bool notify = true,
      SnackBarAction? snackBarAction,
      int snackDuration = 5}) async {
    if (notify) {
      await Future.delayed(
        Duration.zero,
        () async {
          if (type == 'dialog') {
            await UiService.notify(App.rootWidgetKey.currentContext,
                title: t.requestError,
                message: message,
                type: TypeMessage.error);
          } else {
            await UiService.showSnack(App.rootWidgetKey.currentContext,
                text: message,
                type: TypeMessage.error,
                duration: snackDuration,
                action: snackBarAction);
          }
        },
      );
    }

    return false;
  }

  static Map<String, dynamic> _queryParameters(
      Map<String, dynamic>? queryParameters) {
    queryParameters ??= {};

    if (App.token != null) {
      queryParameters['auth'] = App.token;
    }

    queryParameters['app_version'] = AppConfig.buildId.toString();
    return queryParameters;
  }
}
