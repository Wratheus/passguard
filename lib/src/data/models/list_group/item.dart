import 'package:flutter/material.dart';
import 'package:passguard/src/data/models/icon_logo.dart';

final class ListItem {
  final IconLogo? identica;
  final Widget? avatar;
  final String title;
  final String? descript;
  final Color? descriptColor;
  final double? textSize;
  final Function(BuildContext context)? onPress;
  final Widget? leading;
  final String? leadingText;
  final Color? leadingTextColor;
  final Widget? trailing;
  final String? trailingText;
  final Color? trailingTextColor;
  final Widget? afterTitle;
  final bool? borderLine;
  final bool descriptFullWidth;
  final bool disabled;
  final bool active;

  const ListItem(
      {this.identica,
      this.avatar,
      required this.title,
      this.descript,
      this.descriptColor,
      this.textSize,
      this.leading,
      this.trailing,
      this.leadingText,
      this.leadingTextColor,
      this.trailingText,
      this.trailingTextColor,
      this.afterTitle,
      this.onPress,
      this.borderLine,
      this.descriptFullWidth = false,
      this.disabled = false,
      this.active = true});

  @override
  String toString() {
    return 'ListItem(identica: $identica, avatar: $avatar, title: $title, descript: $descript, descriptColor: $descriptColor, textSize: $textSize, onPress: $onPress, leading: $leading, leadingText: $leadingText, leadingTextColor: $leadingTextColor, trailing: $trailing, trailingText: $trailingText, trailingTextColor: $trailingTextColor, afterTitle: $afterTitle, borderLine: $borderLine, descriptFullWidth: $descriptFullWidth, disabled: $disabled, active: $active)';
  }
}
