import 'package:flutter/cupertino.dart';
import 'package:passguard/src/presentation/widgets/image.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget(
      {super.key, required this.photo, required this.name, required this.size});

  final String? photo;
  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ImageWidget(
        shape: BoxShape.circle,
        width: size,
        height: size,
        url: photo ?? '',
        errorWidget: Icon(CupertinoIcons.person_2_fill, size: size),
        boxFit: BoxFit.cover);
  }
}
