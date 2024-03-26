import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
class LoaderInfo extends StatelessWidget {
  const LoaderInfo({super.key, required this.title, required this.processName});

  final String title;
  final String processName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 30),
            child: Text(
              title,
              style: context.theme.textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            processName,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
