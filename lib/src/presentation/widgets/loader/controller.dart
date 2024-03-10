import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/core/helpers/lib.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/presentation/widgets/loader/widget.dart';

class LoaderController {
  static OverlayEntry? _currentLoader;
  static OverlayState? _overlayState;

  static CancelToken? _cancelToken;

  static bool get isShown => _currentLoader != null;

  static bool get cancelToken => _currentLoader != null;

  static Future<void> show({CancelToken? cancelToken}) async {
    _cancelToken = cancelToken;
    _overlayState = App.rootWidgetKey.currentState!.overlay;
    if (_currentLoader == null) {
      _currentLoader = OverlayEntry(
        builder: (BuildContext context) {
          return const LoaderWidget(
            hideCallback: cancel,
          );
        },
      );

      try {
        WidgetsBinding.instance.addPostFrameCallback(
          (Duration _) async {
            try {
              if (_currentLoader != null) {
                _overlayState?.insert(_currentLoader!);
              }
            } catch (e) {
              "LoaderController".log(
                  name: "LoaderController.addPostFrameCallback()",
                  level: LogLevel.error);
            }
          },
        );
      } catch (e) {
        "LoaderController"
            .log(name: "LoaderController.show()", level: LogLevel.error);
      }
    }
  }

  static Future<void> cancel() async {
    await LibHelper.cancelToken(_cancelToken);
    await hide();
  }

  static Future<void> hide() async {
    if (_currentLoader == null) {
      return;
    }

    try {
      _cancelToken = null;
      _currentLoader!.remove();
    } catch (e) {
      "LoaderController"
          .log(name: "LoaderController.hide()", level: LogLevel.error);
    } finally {
      _currentLoader = null;
    }
  }
}
