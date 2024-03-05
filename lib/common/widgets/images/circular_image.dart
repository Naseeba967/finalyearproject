import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.height = 56,
    this.width = 56,
    this.fit = BoxFit.cover,
    required this.imageUrl,
    this.isNetworkImage = false,
    this.padding = Sizes.sm,
    this.backGroundColor,
    this.overLAYColor,
  });
  final double height, padding;
  final Color? backGroundColor, overLAYColor;
  final double width;
  final BoxFit? fit;
  final String imageUrl;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backGroundColor ??
              (HelpersFunction.isDarkMode(context)
                  ? AppColor.black
                  : AppColor.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(imageUrl)
              : AssetImage(
                  imageUrl,
                ) as ImageProvider,
          color: overLAYColor),
    );
  }
}
