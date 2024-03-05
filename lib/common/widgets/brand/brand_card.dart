import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/common/widgets/images/circular_image.dart';
import 'package:finalyearproject/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/enums.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onTap,
    required this.showBoder,
  });
  final bool showBoder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(Sizes.sm),
        backgroundColor: Colors.transparent,
        showBoder: showBoder,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                backGroundColor: Colors.transparent,
                overLAYColor: HelpersFunction.isDarkMode(context)
                    ? AppColor.white
                    : AppColor.darkGrey,
                imageUrl: 'assets/images/warning.png',
              ),
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSizes: TextSizes.medium,
                  ),
                  Text(
                    '256 products',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
