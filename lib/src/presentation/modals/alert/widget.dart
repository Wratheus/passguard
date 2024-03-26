import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/colors/buttons/color_button.dart';
import 'package:passguard/src/configs/theme/colors/buttons/primary.dart';
import 'package:passguard/src/configs/theme/colors/buttons/transparent.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/presentation/widgets/button.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget(
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
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: context.themeModeColors.bgContainer),
        padding:
            const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 25),
        margin: EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: context.mq.padding.bottom > 0
                ? context.mq.padding.bottom
                : 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.priority_high,
                color: Colors.white,
                size: 13,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: context.theme.textTheme.labelMedium,
                    ),
                  ),
                  Text(
                    descript,
                    textAlign: TextAlign.center,
                    style: context.theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Button(
                tap: () => Navigator.pop(context, true),
                margin: const EdgeInsets.only(bottom: 5),
                text: '${alert ? t.iSee : t.confirm} (ent)',
                theme: alert
                    ? ColorButtonThemePrimary(context)
                    : confirmButtonTheme),
            if (!alert)
              Button(
                  tap: () => Navigator.pop(context),
                  margin: const EdgeInsets.only(bottom: 5),
                  text: '${t.cancel} (esc)',
                  theme: ColorButtonThemeTransparent(context)),
          ],
        ),
      ),
    );
  }
}
