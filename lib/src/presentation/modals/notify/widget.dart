import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/colors/buttons/white_black.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/presentation/modals/notify/service/service.dart';
import 'package:passguard/src/presentation/widgets/button.dart';

class NotifyWidget extends StatelessWidget {
  const NotifyWidget({super.key, required this.notifyService});

  final NotifyService notifyService;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: context.mq.size.width,
        decoration: BoxDecoration(color: notifyService.backgroundColor),
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom:
                context.mq.padding.bottom > 0 ? context.mq.padding.bottom : 20),
        margin: const EdgeInsets.only(left: 0, right: 0),
        child: Column(
          children: [
            Text(
              notifyService.title,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.titleMedium!
                  .copyWith(color: notifyService.textColor),
            ),
            if (notifyService.message.isNotEmpty)
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  notifyService.message,
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.bodyMedium!
                      .copyWith(color: notifyService.textColor),
                ),
              ),
            Button(
                theme: ColorButtonThemeWhiteBlack(context),
                tap: () => Navigator.pop(context),
                margin: const EdgeInsets.only(top: 30),
                text: t.close)
          ],
        ),
      ),
    );
  }
}
