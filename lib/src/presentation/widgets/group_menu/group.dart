import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/models/list_group/group.dart';
import 'package:passguard/src/data/models/list_group/header.dart';
import 'package:passguard/src/data/models/list_group/item.dart';
import 'package:passguard/src/presentation/widgets/group_menu/header.dart';
import 'package:passguard/src/presentation/widgets/group_menu/item.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ListGroupWidget extends StatelessWidget {
  const ListGroupWidget(
      {super.key, required this.groups, this.borderLine = false, this.margin});

  final List<ListGroup> groups;
  final bool borderLine;
  final EdgeInsets? margin;

  Widget items(ListGroup group) {
    List<ListItemWidget> items = [];
    for (ListItem item in group.items) {
      if (item.active) {
        items.add(ListItemWidget(
            item: item,
            borderLine: borderLine,
            last: group.items.last == item));
      }
    }

    return Column(
      children: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    for (ListGroup group in groups) {
      list.add(
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: context.themeModeColors.bgContainer,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [ListGroupHeaderWidget(data: group.header), items(group)],
          ),
        ),
      );
    }

    return Container(
      margin: margin,
      child: Column(children: list),
    );
  }

  static Widget sliver(BuildContext context,
      {required List<ListGroup> groups, bool borderLine = false}) {
    List<Widget> list = [];
    for (ListGroup group in groups) {
      list.add(
        renderSliverGroup(
          context,
          header: group.header,
          sliverList: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int idx) {
                return ListItemWidget(
                    item: group.items[idx],
                    borderLine: borderLine,
                    last: idx == group.items.length - 1);
              },
              childCount: group.items.length,
            ),
          ),
        ),
      );
    }
    return MultiSliver(children: list);
  }

  static Widget sliverGroupSingleBuilder(BuildContext context,
      {required ListItemWidget Function(
              BuildContext context, int idx, bool last)
          builder,
      ListGroupHeader? header,
      required int childCount,
      bool borderLine = false}) {
    return renderSliverGroup(
      context,
      header: header,
      sliverList: SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int idx) {
            return builder(context, idx, idx == childCount - 1);
          },
          childCount: childCount,
        ),
      ),
    );
  }

  static Widget renderSliverGroup(BuildContext context,
      {required ListGroupHeader? header, required Widget sliverList}) {
    return SliverStack(
      insetOnOverlap: false,
      children: [
        SliverPositioned.fill(
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: context.themeModeColors.bgContainer,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        MultiSliver(
          children: [
            const SizedBox(height: 5),
            ListGroupHeaderWidget(data: header),
            sliverList,
            const SizedBox(height: 10),
          ],
        )
      ],
    );
  }
}
