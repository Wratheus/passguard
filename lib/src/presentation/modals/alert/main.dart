import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/colors/buttons/color_button.dart';
import 'package:passguard/src/configs/theme/colors/buttons/primary.dart';
import 'package:passguard/src/presentation/modals/alert/widget.dart';

class AlertMain extends StatelessWidget {
  const AlertMain(
      {super.key,
      required this.confirm,
      required this.title,
      required this.descript,
      this.alert = false,
      this.confirmButtonTheme});

  final bool alert;
  final bool confirm;
  final String title;
  final String descript;
  final ThemeColorButton? confirmButtonTheme;

  @override
  Widget build(BuildContext context) {
    return AlertWidget(
        confirm: true,
        title: title,
        descript: descript,
        alert: alert,
        confirmButtonTheme:
            confirmButtonTheme ?? ColorButtonThemePrimary(context));
  }
}
