import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/common/widgets/products/rating/rating_bar_incicator.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppImage.admin),
                ),
                const SizedBox(
                  width: Sizes.spaceBtwItem,
                ),
                Text(
                  'Yakup',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem,
        ),
        Row(
          children: [
            const AppRatingBarIndicator(
              rating: 3.5,
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem,
            ),
            Text(
              '07 Nov 2024',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem,
        ),
        const ReadMoreText(
          'This is s Product discription for easy care product. It can up to 4 lines. In this section, brief discussion of product...............................................For More details Please contact us on WhatsApp ',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: Sizes.spaceBtwItem,
        ),
        RoundedContainer(
          backgroundColor: dark ? AppColor.darkGrey : AppColor.grey,
          child: Padding(
            padding: const EdgeInsets.all(Sizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'EasyCare',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '9 Nov 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.spaceBtwSection,
                ),
                const ReadMoreText(
                  'This is s Product discription for easy care product. It can up to 4 lines. In this section, brief discussion of product...............................................For More details Please contact us on WhatsApp ',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Less',
                  trimCollapsedText: 'show more',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
