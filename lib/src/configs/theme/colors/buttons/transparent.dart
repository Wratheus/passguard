import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/colors/buttons/color_button.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';

class ColorButtonThemeTransparent extends ThemeColorButton {
  ColorButtonThemeTransparent(BuildContext context)
      : super(
            background: Colors.transparent,
            text:
                context.themeModeColors.mainTextColor);
}
