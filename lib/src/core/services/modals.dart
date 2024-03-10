import 'package:passguard/src/configs/theme/colors/buttons/color_button.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/core/services/ui.dart';
import 'package:flutter/material.dart';

sealed class ModalsService {
  static Future onUpdateApp(BuildContext context, {Build? accessBuild}) async {
    return await UiService.showModalBottom(
      context,
      UpdateAppMain(accessBuild: accessBuild),
    );
  }

  static Future onNotify(BuildContext context,
      {required String title, String message = '', TypeMessage? type}) async {
    return await UiService.showModalBottom(
        context, NotifyMain(type: type, title: title, message: message),
        barrierColor: Colors.transparent);
  }

  static Future onSelectLang(BuildContext context) async {
    return await UiService.showModal(
      context,
      const SelectLangMain(),
    );
  }

  static Future<bool> onAlert(BuildContext context,
      {required dynamic confirm,
      required String title,
      required String descript,
      final ThemeColorButton? confirmButtonTheme,
      bool alert = false}) async {
    var data = await UiService.showModalBottom(
      context,
      AlertMain(
        confirm: confirm,
        title: title,
        descript: descript,
        alert: alert,
        confirmButtonTheme: confirmButtonTheme,
      ),
      barrierColor: Colors.black.withOpacity(.1),
    );
    return alert ? true : data == true;
  }
}
