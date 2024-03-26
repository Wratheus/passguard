final class IconBgSize {
  const IconBgSize(
      {required this.sizeBackground,
        required this.sizeIcon,
        required this.borderRadius});

  final double sizeBackground;
  final double sizeIcon;
  final double borderRadius;

  IconBgSize copyWith({
    double? sizeBackground,
    double? sizeIcon,
    double? borderRadius,
  }) {
    return IconBgSize(
      sizeBackground: sizeBackground ?? this.sizeBackground,
      sizeIcon: sizeIcon ?? this.sizeIcon,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}
