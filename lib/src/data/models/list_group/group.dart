import 'package:passguard/src/data/models/list_group/header.dart';
import 'package:passguard/src/data/models/list_group/item.dart';

final class ListGroup {
  final ListGroupHeader? header;
  final List<ListItem> items;

  const ListGroup({this.header, required this.items});

  @override
  String toString() => 'ListGroup(header: $header items: $items)';
}
