import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/data/models/list_group/item.dart';
import 'package:passguard/src/presentation/widgets/icon_bg.dart';
import 'package:passguard/src/presentation/widgets/ink_btn.dart';

class ListItemWidget extends StatelessWidget {
  ListItemWidget(
      {super.key, required this.item, borderLine = false, this.last = false})
      : borderLine = item.borderLine ?? borderLine;

  final ListItem item;
  final bool last;
  final bool borderLine;

  @override
  Widget build(BuildContext context) {
    Widget leading() {
      if (item.leadingText != null) {
        return Container(
          margin: const EdgeInsets.only(right: 15),
          child: Text(
            item.leadingText!,
            style: context.theme.textTheme.bodyMedium!.copyWith(
              color: item.leadingTextColor ?? Colors.black.withOpacity(.8),
            ),
          ),
        );
      } else if (item.leading != null) {
        return Container(
          margin: const EdgeInsets.only(right: 15),
          child: item.leading,
        );
      }
      return const SizedBox.shrink();
    }

    Widget avatar() {
      if (item.avatar == null) {
        return const SizedBox.shrink();
      }

      return Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: item.avatar,
      );
    }

    Widget icon() {
      if (item.identica == null || item.avatar != null) {
        return const SizedBox.shrink();
      }

      return IconBg(
        identica: item.identica!,
        size: 30,
        shape: IconBgShape.circle,
        margin: const EdgeInsets.only(right: 15),
      );
    }

    Widget trailing() {
      if (item.trailingText != null) {
        return Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            item.trailingText!,
            style: context.theme.textTheme.bodyMedium!.copyWith(
                color: item.trailingTextColor ?? context.theme.hintColor),
          ),
        );
      } else if (item.trailing != null) {
        return Container(
          margin: const EdgeInsets.only(left: 10),
          child: item.trailing,
        );
      }
      return const SizedBox.shrink();
    }

    Widget chevron() {
      if (item.onPress != null) {
        return Container(
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(
            CupertinoIcons.right_chevron,
            size: 10,
          ),
        );
      }

      return const SizedBox.shrink();
    }

    Widget descript() {
      if (item.descript != null) {
        return Container(
          padding: const EdgeInsets.only(bottom: 10),
          constraints: BoxConstraints(
              maxWidth: item.descriptFullWidth ? double.infinity : 250),
          child: Text(
            item.descript!,
            style: context.theme.textTheme.bodySmall!.copyWith(
                color: item.descriptColor ??
                    context.themeModeColors.mainTextColor),
          ),
        );
      }

      return const SizedBox.shrink();
    }

    Widget title() {
      return Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(item.title,
                  overflow: TextOverflow.ellipsis,
                  style: context.theme.textTheme.bodyMedium),
            ),
            if (item.afterTitle != null)
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: item.afterTitle),
          ],
        ),
      );
    }

    return InkBtn(
      disable: item.disabled,
      tap: item.onPress != null ? () => item.onPress!(context) : null,
      borderRadius: BorderRadius.circular(10),
      color: Colors.transparent,
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                  border: borderLine && !last
                      ? Border(
                          bottom: BorderSide(
                            color: context.theme.dividerColor,
                            width: .5,
                          ),
                        )
                      : null),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  avatar(),
                  icon(),
                  leading(),
                  title(),
                  trailing(),
                  chevron()
                ],
              ),
            ),
            descript()
          ],
        ),
      ),
    );
  }
}
