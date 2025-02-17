import 'package:be_talent/ds/static_colors.dart';
import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,
    this.height = double.infinity,
    this.width = double.infinity,
    this.borderRadius,
  });

  Skeleton.roundedCorners({
    super.key,
    this.height = double.infinity,
    this.width = double.infinity,
    required double borderRadius,
  }) : borderRadius = BorderRadius.circular(borderRadius);

  Skeleton.circle({
    super.key,
    required double size,
  })  : height = size,
        width = size,
        borderRadius = BorderRadius.circular(size / 2);

  final double height;
  final double width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: borderRadius != null
          ? BoxDecoration(
              borderRadius: borderRadius,
              color: StaticColors.gray10,
            )
          : null,
      color: borderRadius == null ? StaticColors.gray10 : null,
    );
  }
}
