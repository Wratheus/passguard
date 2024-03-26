import 'package:flutter/cupertino.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/data/models/icon_bg_size.dart';
import 'package:passguard/src/data/models/icon_logo.dart';

class IconBg extends StatelessWidget {
  const IconBg(
      {super.key,
      required this.identica,
      this.shape = IconBgShape.squareRounded,
      this.size,
      this.custom,
      this.margin = EdgeInsets.zero});

  final IconLogo identica;
  final IconBgShape shape;
  final double? size;
  final IconBgSize? custom;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    if (size == null && custom == null) {
      return Container();
    }

    IconBgSize iconBgSize =
        IconBgSize(sizeBackground: size ?? 0, sizeIcon: 0, borderRadius: 0);

    if (custom != null) {
      iconBgSize = custom!;
    } else if (size != null) {
      iconBgSize = iconBgSize.copyWith(
        sizeBackground: size!,
        sizeIcon: size! / 2,
        borderRadius: switch (shape) {
          IconBgShape.squareRounded => ((size! / 2) / 100) * 80,
          IconBgShape.circle => size!,
          IconBgShape.square => 0.0
        },
      );
    } else {
      return const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
          color: identica.iconBackgroundColor,
          borderRadius: BorderRadius.circular(iconBgSize.borderRadius)),
      width: iconBgSize.sizeBackground,
      height: iconBgSize.sizeBackground,
      margin: margin,
      child: Center(
        child: Icon(
          identica.icon,
          color: identica.iconColor,
          size: iconBgSize.sizeIcon,
        ),
      ),
    );
  }
}
