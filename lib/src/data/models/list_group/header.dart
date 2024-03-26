import 'package:flutter/material.dart';
import 'package:passguard/src/data/models/list_group/icon.dart';

final class ListGroupHeader {
  final String title;
  final String descript;
  final IconData? icon;
  final ListGroupHeaderIcon? backgroundIcon;

  const ListGroupHeader(
      {required this.title,
      required this.descript,
      this.icon,
      this.backgroundIcon});

  @override
  String toString() =>
      'ListGroupHeader(title: $title, descript: $descript, icon: $icon)';
}
