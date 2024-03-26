import 'package:flutter/material.dart';
import 'package:passguard/src/core/utils/enums.dart';
class NotifyService {
  NotifyService({required this.type, required this.title, this.message = ''}) {
    if (type != null) {
      textColor = Colors.white;
    }

    if (type == TypeMessage.success) {
      backgroundColor = const Color(0xFF6DB95A);
    } else if (type == TypeMessage.error) {
      backgroundColor = const Color(0xFFFB5757);
    } else if (type == TypeMessage.warning) {
      backgroundColor = const Color(0xFFFBB957);
    } else if (type == TypeMessage.notify) {
      backgroundColor = Colors.deepPurpleAccent;
    }
  }

  TypeMessage? type;
  String title;
  String message;

  Color textColor = Colors.black;
  Color backgroundColor = Colors.white;
}
