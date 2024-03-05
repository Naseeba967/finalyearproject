import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/device/device_utils.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search,
    this.showBoder = true,
    this.showBackground = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
  });
  final String text;
  final IconData icon;
  final bool showBoder, showBackground;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(Sizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? AppColor.dark
                      : AppColor.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
              border: showBoder ? Border.all(color: AppColor.grey) : null),
          child: Row(children: [
            Icon(
              icon,
              color: AppColor.darkerGrey,
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ]),
        ),
      ),
    );
  }
}
