import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.backgroundColor = AppColor.white,
    this.child,
    this.padding = 0.0,
    this.radius = 400,
    this.margin, this.showBoder,
  });
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final Color backgroundColor;
  final Widget? child;
  final double padding;
  final bool? showBoder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor, 
          borderRadius: BorderRadius.circular(radius)
          ),
      child: child,
    );
  }
}
