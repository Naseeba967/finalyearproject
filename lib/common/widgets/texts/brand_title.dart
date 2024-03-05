import 'package:finalyearproject/utils/constant/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText(
      {super.key,
      this.maxLines,
      required this.title,
      this.color,
      this.brandTextSizes = TextSizes.small,
      this.textAlign = TextAlign.center});
  final int? maxLines;
  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: brandTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSizes == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSizes == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
