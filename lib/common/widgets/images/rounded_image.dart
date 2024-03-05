import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.backgroundColor = AppColor.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.boderRadius = Sizes.md,
    this.boder,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double boderRadius;
  final BoxBorder? boder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: boder,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(boderRadius)),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(boderRadius)
                : BorderRadius.zero,
            child: Image(
                fit: fit,
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(
                        imageUrl,
                      ) as ImageProvider)),
      ),
    );
  }
}
