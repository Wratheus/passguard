import 'package:flutter/material.dart';

class IconLogo {
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;

  const IconLogo(
      {required this.icon,
      this.iconColor = Colors.white,
      required this.iconBackgroundColor});

  @override
  String toString() =>
      'Identica(icon: $icon, iconColor: $iconColor, iconBackgroundColor: $iconBackgroundColor)';
}
