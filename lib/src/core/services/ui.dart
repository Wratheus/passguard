import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:passguard/src/configs/app.dart';
import 'package:passguard/src/configs/theme/colors/buttons/blue_white.dart';
import 'package:passguard/src/configs/theme/colors/buttons/color_button.dart';
import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/core/services/modals.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/presentation/widgets/loader/controller.dart';

sealed class UiService {
  static Future<void> showSnack(dynamic context,
      {required dynamic text,
        required TypeMessage? type,
        int duration = 2,
        SnackBarAction? action,
        bool soundError = true,
        bool vibration = true,
        bool enable = true}) async {
    if (!enable) {
      return;
    }
    if (!AppConfig.notifications) {
      if (type == TypeMessage.error) {
        'showSnack - error: $text'
            .log(name: "UiService.showSnack()", level: LogLevel.error);
      } else if (type == TypeMessage.warning) {
        'showSnack - warning: $text'
            .log(name: "UiService.showSnack()", level: LogLevel.warning);
      } else if (type == TypeMessage.success) {
        'showSnack - success: $text'
            .log(name: "UiService.showSnack()", level: LogLevel.success);
      } else if (type == TypeMessage.notify) {
        'showSnack - notify: $text'
            .log(name: "UiService.showSnack()", level: LogLevel.info);
      }
      return;
    }

    Color color = Colors.black;
    switch (type) {
      case TypeMessage.error:
        if (vibration) {
          vibError();
        }
        color = Colors.redAccent;
      case TypeMessage.warning:
        if (vibration) {
          vibMedium();
        }
        color = Colors.orangeAccent;
      case TypeMessage.success:
        if (vibration) {
          vibHeavy();
        }
        color = Colors.greenAccent;
      case TypeMessage.notify:
        if (vibration) {
          vibHeavy();
        }
        color = Colors.deepPurpleAccent;
      default:
        if (vibration) {
          vibHeavy();
        }
        color = Colors.black;
    }

    if (action != null) {
      duration = 5;
    }

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(text),
          backgroundColor: color,
          duration: Duration(seconds: duration),
          action: action),
    );
  }

  static Future<bool> showConfirm(BuildContext context,
      {required String title,
        required String message,
        bool alert = false,
        ThemeColorButton? confirmButtonTheme}) async {
    return await ModalsService.onAlert(
      context,
      confirm: true,
      alert: alert,
      title: title,
      descript: message,
      confirmButtonTheme:
      confirmButtonTheme ?? ColorButtonThemeBlueWhite(context),
    );
  }

  static Future showModal(BuildContext context, dynamic widget,
      [dynamic args]) async {
    return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return widget;
      },
    );
  }

  static Future showModalBottom(BuildContext context, dynamic widget,
      {bool enableDrag = false, Color? barrierColor}) async {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: enableDrag,
      barrierColor:
      barrierColor ?? context.themeModeColors.barrierColorModalBottom,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return widget;
      },
    );
  }

  static Future<void> showLoader({CancelToken? cancelToken}) async =>
      await LoaderController.show(cancelToken: cancelToken);

  static Future<void> hideLoader() async => await LoaderController.hide();

  static bool isLoader() => LoaderController.isShown;

  static void vibHeavy() => Vibrate.feedback(FeedbackType.heavy);

  static void vibMedium() => Vibrate.feedback(FeedbackType.medium);

  static void vibLight() => Vibrate.feedback(FeedbackType.light);

  static void vibError() => Vibrate.feedback(FeedbackType.error);

  static void vibSuccess() => Vibrate.feedback(FeedbackType.success);

  static void vibWarning() => Vibrate.feedback(FeedbackType.warning);

  static dynamic notify(dynamic context,
      {required String title,
        String message = '',
        TypeMessage? type,
        bool vibration = true}) {
    if (!AppConfig.notifications) {
      if (type == TypeMessage.error) {
        'showSnack - error: $message'
            .log(name: "UiService.notify()", level: LogLevel.error);
      } else if (type == TypeMessage.warning) {
        'showSnack - warning: $message'
            .log(name: "UiService.notify()", level: LogLevel.warning);
      }
      return;
    }


    if (vibration) {
      switch (type) {
        case TypeMessage.error:
          vibError();
        case TypeMessage.success:
          vibSuccess();
        case TypeMessage.warning:
          vibWarning();
        case TypeMessage.notify:
          vibMedium();
        default:
          vibLight();
      }
    }

    return ModalsService.onNotify(context,
        title: title, message: message, type: type);
  }
}
