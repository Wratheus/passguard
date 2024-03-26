import 'package:flutter/material.dart';

class DisableGlowEffectWidget extends StatelessWidget {
  final Widget child;

  const DisableGlowEffectWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: child);
  }
}
