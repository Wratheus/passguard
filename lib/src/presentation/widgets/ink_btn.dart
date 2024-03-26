import 'package:flutter/material.dart';

class InkBtn extends StatelessWidget {
  const InkBtn(
      {super.key,
      required this.child,
      this.tap,
      this.color = Colors.white,
      this.gradient,
      this.borderRadius = BorderRadius.zero,
      this.margin = EdgeInsets.zero,
      this.boxShadow = const [],
      this.canRequestFocus = true,
      this.disable = false});

  final Widget child;
  final Function()? tap;
  final Color color;
  final Gradient? gradient;
  final BorderRadius borderRadius;
  final EdgeInsets margin;
  final List<BoxShadow> boxShadow;
  final bool canRequestFocus;
  final bool disable;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: disable ? .5 : 1,
      child: Container(
        margin: margin,
        decoration:
            BoxDecoration(boxShadow: boxShadow, borderRadius: borderRadius),
        child: Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
                color: color, gradient: gradient, borderRadius: borderRadius),
            child: InkWell(
              canRequestFocus: canRequestFocus,
              onTap: disable ? null : tap,
              borderRadius: borderRadius,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
