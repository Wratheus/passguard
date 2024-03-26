import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      required this.url,
      this.width,
      this.height,
      this.margin,
      this.borderRadius,
      this.color,
      this.boxFit,
      this.shape, this.errorWidget});

  final String url;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final BoxFit? boxFit;
  final BoxShape? shape;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        shape: shape ?? BoxShape.rectangle,
        color: color ?? context.themeModeColors.bgContainer,
        borderRadius: borderRadius,
      ),
      child: CachedNetworkImage(
        fit: boxFit ?? BoxFit.contain,
        imageUrl: url,
        placeholder: (BuildContext context, String url) {
          return const Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          );
        },
        errorWidget: (BuildContext context, String url, Object error) =>
            errorWidget ?? const Icon(Icons.error),
      ),
    );
  }
}
