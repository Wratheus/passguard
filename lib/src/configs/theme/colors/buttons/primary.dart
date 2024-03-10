import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/colors/buttons/color_button.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';

class ColorButtonThemePrimary extends ThemeColorButton {
  ColorButtonThemePrimary(BuildContext context)
      : super(
          background: context.themeModeColors.primaryButtonBackgroundColor,
          text: context.themeModeColors.primaryButtonTextColor,
        );
}
