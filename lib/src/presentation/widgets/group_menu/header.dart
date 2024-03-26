import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/models/list_group/header.dart';

class ListGroupHeaderWidget extends StatelessWidget {
  const ListGroupHeaderWidget({super.key, this.data});

  final ListGroupHeader? data;

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const SizedBox.shrink();
    }

    Widget icon() {
      if (data!.backgroundIcon != null) {
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: data!.backgroundIcon!.background,
              borderRadius: BorderRadius.circular(20)),
          child: Icon(
            data!.backgroundIcon!.icon,
            color: Colors.white,
            size: 12,
          ),
        );
      } else if (data!.icon != null) {
        return Container(
          margin: const EdgeInsets.only(left: 10),
          child: Icon(
            data!.icon,
            size: 14,
          ),
        );
      }

      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data!.title,
                  overflow: TextOverflow.ellipsis,
                  style: context.theme.textTheme.labelMedium,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  constraints: const BoxConstraints(maxWidth: 300),
                  child: Text(
                    data!.descript,
                    style: context.theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          icon()
        ],
      ),
    );
  }
}
