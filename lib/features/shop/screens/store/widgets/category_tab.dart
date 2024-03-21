import 'package:finalyearproject/common/widgets/layout/grid_layout.dart';
import 'package:finalyearproject/common/widgets/products/products_cart/products_cart_vertical.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(
                height: Sizes.spaceBtwItem,
              ),
              GridLayout(
                  itemcount: 8,
                  itemBuilder: (_, index) =>
                   const  ProductsCartVertical( productName: "Wheel chair", productPrice: "123"),),
              const SizedBox(
                height: Sizes.spaceBtwSection,
              )
            ],
          ),
        ),
      ],
    );
  }
}
