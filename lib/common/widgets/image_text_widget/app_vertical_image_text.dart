import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
class AppVerticalImageText extends StatelessWidget {
  const AppVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.textColor = AppColor.white,
    this.backgroundColor = AppColor.white,
    this.onTap,
  });
  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItem),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (HelpersFunction.isDarkMode(context)
                        ? AppColor.black
                        : AppColor.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image.asset(
                  image,
                  color: HelpersFunction.isDarkMode(context)
                      ? AppColor.light
                      : AppColor.dark,
                ),
              ),
            ),
            const SizedBox(
              height: Sizes.spaceBtwItem / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
