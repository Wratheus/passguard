import 'package:flutter/material.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/presentation/modals/notify/service/service.dart';
import 'package:passguard/src/presentation/modals/notify/widget.dart';
class NotifyMain extends StatelessWidget {
  const NotifyMain(
      {super.key, required this.title, this.message = '', this.type});

  final String title;
  final String message;
  final TypeMessage? type;

  @override
  Widget build(BuildContext context) {
    NotifyService service =
        NotifyService(type: type, title: title, message: message);

    return NotifyWidget(notifyService: service);
  }
}
