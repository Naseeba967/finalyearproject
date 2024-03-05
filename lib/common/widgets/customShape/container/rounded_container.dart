import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width ,
    this.height ,
    this.backgroundColor = AppColor.white,
    this.child,
    this.padding,
    this.radius = Sizes.cardRadiusLg,
    this.margin,
    this.showBoder = false,
    this.boderColor = AppColor.boderPrimary,
  });
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final Color backgroundColor;
  final Widget? child;
  final EdgeInsets? padding;
  final bool showBoder;
  final Color boderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBoder ? Border.all(color: boderColor) : null),
      child: child,
    );
  }
}
