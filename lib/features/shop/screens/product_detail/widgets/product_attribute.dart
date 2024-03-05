import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/common/widgets/texts/product_price_text.dart';
import 'package:finalyearproject/common/widgets/texts/product_title_text.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelpersFunction.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(Sizes.md),
          backgroundColor: darkMode ? AppColor.darkGrey : AppColor.grey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const SectionHeading(
                  title: "variation",
                  showActionButton: false,
                ),
                const SizedBox(
                  width: Sizes.spaceBtwItem,
                ),
                const ProductTitleText(
                  title: "Price: ",
                  isSmallSize: true,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'PKR.25',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(
                          width: Sizes.spaceBtwItem,
                        ),
                        const ProductPriceText(price: '20')
                      ],
                    ),
                    Row(
                      children: [
                        const ProductTitleText(
                          title: 'Stock ',
                          isSmallSize: true,
                        ),
                        Text(
                          'in stock',
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            const ProductTitleText(
              title: 'this sis description of product, it can up to 4 lines',
              maxLines: 4,
              isSmallSize: true,
            )
          ]),
        )
      ],
    );
  }
}
