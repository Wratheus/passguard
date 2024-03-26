import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';

class UiTextField extends StatelessWidget {
  const UiTextField({
    super.key,
    required this.controller,
    this.icon,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.isPassword = false,
    this.placeholder,
    this.suffix,
    this.hideInnner = false,
    this.maxLines = 1,
    this.fillColor,
    this.borderRadius,
    this.minLines,
    this.textCapitalization = TextCapitalization.none,
    this.autocorrect = false,
    this.hasBorder = false,
    this.textAlign = TextAlign.start,
    this.textColor,
    this.contentPadding,
    this.textStyle,
    this.textInputAction,
    this.focus,
  });

  final TextEditingController controller;
  final IconData? icon;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final bool isPassword;
  final String? placeholder;
  final Widget? suffix;
  final int? maxLines;
  final int? minLines;
  final bool hideInnner;
  final Color? fillColor;
  final BorderRadius? borderRadius;
  final TextCapitalization textCapitalization;
  final bool autocorrect;
  final bool hasBorder;
  final TextAlign textAlign;
  final EdgeInsets? contentPadding;
  final Color? textColor;
  final TextStyle? textStyle;
  final FocusNode? focus;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    Color? hintColor = context.themeModeColors.mainTextColor.withOpacity(0.5);
    TextStyle? style = textStyle ?? context.theme.textTheme.bodyMedium;

    return TextField(
      onEditingComplete: onEditingComplete,
      focusNode: focus,
      minLines: minLines,
      controller: controller,
      style: style,
      cursorColor: context.themeModeColors.mainTextColor,
      cursorWidth: 1,
      maxLines: maxLines,
      strutStyle: StrutStyle(fontSize: style?.fontSize),
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onTap: onTap,
      textCapitalization: textCapitalization,
      obscureText: isPassword,
      autocorrect: autocorrect,
      textAlign: textAlign,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
        prefixIcon: icon != null
            ? Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Opacity(
                  opacity: 1,
                  child: Icon(
                    icon,
                    size: 16,
                    color: context.themeModeColors.approvedGreen,
                  ),
                ),
              )
            : null,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 16 + 14,
          minHeight: 16 + 14,
        ),
        filled: true,
        suffixIconConstraints:
            const BoxConstraints(minHeight: 0, maxHeight: 40),
        suffixIcon: suffix,
        fillColor: fillColor ?? Colors.transparent,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: borderRadius ?? BorderRadius.circular(20),
        ),
        isDense: true,
        hintText: placeholder,
        enabledBorder: OutlineInputBorder(
          borderSide: hasBorder
              ? BorderSide(color: context.themeModeColors.bgContainer)
              : BorderSide.none,
          borderRadius: borderRadius ?? BorderRadius.circular(20),
        ),
        hintStyle: style?.copyWith(
          color: hintColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: hasBorder
              ? BorderSide(color: context.themeModeColors.bgContainer)
              : BorderSide.none,
          borderRadius: borderRadius ?? BorderRadius.circular(20),
        ),
      ),
    );
  }
}
