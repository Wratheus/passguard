import 'package:flutter/material.dart';

abstract class ThemeColorButton {
  Color background;
  Color text;

  ThemeColorButton({required this.background, required this.text});

  @override
  String toString() => 'ThemeColorButton(background: $background, text: $text)';
}
