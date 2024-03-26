import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/colors/buttons/color_button.dart';
import 'package:passguard/src/configs/theme/colors/buttons/primary.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/presentation/widgets/ink_btn.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.tap,
      this.icon,
      required this.text,
      this.disable = false,
      this.theme,
      this.margin = EdgeInsets.zero,
      this.heightSize = ButtonHeightSize.standart,
      this.widthFromContent = false,
      this.active = true,
      this.borderTopLeft = true,
      this.borderTopRight = true,
      this.borderBottonLeft = true,
      this.borderBottonRight = true});

  final bool disable;
  final ThemeColorButton? theme;
  final Function()? tap;
  final String text;
  final EdgeInsets margin;
  final ButtonHeightSize heightSize;
  final bool widthFromContent;
  final IconData? icon;
  final bool active;
  final bool borderTopLeft;
  final bool borderTopRight;
  final bool borderBottonLeft;
  final bool borderBottonRight;

  @override
  Widget build(BuildContext context) {
    if (!active) {
      return const SizedBox.shrink();
    }

    double? height;
    if (heightSize == ButtonHeightSize.average) {
      height = 80;
    } else if (heightSize == ButtonHeightSize.big) {
      height = 100;
    }

    double defaultBorderRadius =
        heightSize != ButtonHeightSize.standart ? 20 : 15;

    return InkBtn(
      tap: tap,
      disable: disable,
      canRequestFocus: false,
      color: theme == null
          ? ColorButtonThemePrimary(context).background
          : theme!.background,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderTopLeft ? defaultBorderRadius : 0),
        topRight: Radius.circular(borderTopRight ? defaultBorderRadius : 0),
        bottomLeft: Radius.circular(borderBottonLeft ? defaultBorderRadius : 0),
        bottomRight:
            Radius.circular(borderBottonRight ? defaultBorderRadius : 0),
      ),
      margin: margin,
      child: Container(
        height: height,
        width: widthFromContent ? null : MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        child: Center(
          widthFactor: widthFromContent ? 1 : null,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.labelLarge!.copyWith(
                overflow: TextOverflow.ellipsis,
                color: theme == null
                    ? ColorButtonThemePrimary(context).text
                    : theme!.text),
          ),
        ),
      ),
    );
  }
}
