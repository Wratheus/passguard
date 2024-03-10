import 'package:flutter/material.dart';
import 'package:passguard/src/configs/theme/theme.dart';

extension SizedContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  ThemeModeColors get themeModeColors =>
      Theme.of(this).extension<ThemeModeColors>()!;

  MediaQueryData get mq => MediaQuery.of(this);

  Size get sizePx => mq.size;
}
