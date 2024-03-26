import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget(
      {super.key,
      required this.value,
      this.icon,
      this.backgroundColor = Colors.blueAccent,
      this.textColor = Colors.white,
      this.margin});

  final IconData? icon;
  final String value;
  final Color backgroundColor;
  final Color textColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          if (icon != null)
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: Icon(
                icon,
                size: context.theme.textTheme.bodySmall!.fontSize,
                color: textColor,
              ),
            ),
          Text(
            value,
            style: context.theme
                .textTheme
                .bodySmall!
                .copyWith(color: textColor, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
