import 'package:finalyearproject/common/widgets/texts/brand_title.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/enums.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor = AppColor.primaryColor,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });
  final String title;
  final Color? textColor, iconColor;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Flexible(
        child: BrandTitleText(
          color: textColor,
          brandTextSizes: brandTextSizes,
          title: title,
          maxLines: maxLines,
          textAlign: textAlign,
        ),
      ),
      const SizedBox(
        width: Sizes.xs,
      ),
      const Icon(
        Icons.verified,
        color: AppColor.primaryColor,
        size: Sizes.iconMd,
      )
    ]);
  }
}
