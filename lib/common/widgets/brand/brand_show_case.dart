import 'package:finalyearproject/common/widgets/brand/brand_card.dart';
import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/utils/constant/colors.dart';

import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBoder: true,
      boderColor: AppColor.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: Sizes.spaceBtwItem),
      child: Column(
        children: [
          const BrandCard(
            showBoder: false,
          ),
          Row(
              children: images
                  .map((image) => barndproductImagesWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Widget barndproductImagesWidget(String image, context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: HelpersFunction.isDarkMode(context)
            ? AppColor.darkGrey
            : AppColor.light,
        margin: const EdgeInsets.only(right: Sizes.sm),
        padding: const EdgeInsets.all(Sizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
