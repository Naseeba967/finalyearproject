import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/common/widgets/images/circular_image.dart';
import 'package:finalyearproject/common/widgets/texts/product_price_text.dart';
import 'package:finalyearproject/common/widgets/texts/product_title_text.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/enums.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelpersFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: AppColor.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.sm, vertical: Sizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColor.black),
              ),
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem,
            ),
            Text(
              '',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem,
            ),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem / 1.5,
        ),
        const ProductTitleText(
          title: 'Easy Care Product',
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem / 1.5,
        ),
        Row(
          children: [
            const ProductTitleText(title: 'status'),
            const SizedBox(height: Sizes.spaceBtwItem),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem / 1.5,
        ),
        Row(
          children: [
            CircularImage(
              imageUrl: AppImage.customer,
              width: 32,
              height: 32,
              overLAYColor: darkMode ? AppColor.white : AppColor.black,
            ),
          ],
        )
      ],
    );
  }
}
