import 'package:finalyearproject/features/shop/screens/product_detail/widgets/bottom_add_cart.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/product_attribute.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/product_image_slider.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/rating_and_share.dart';
import 'package:finalyearproject/features/shop/screens/product_reviews/product_review.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                left: Sizes.defaultSpace,
                bottom: Sizes.defaultSpace,
                right: Sizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const RatingAndShare(),
                  const ProductMetaData(),
                  //   const ProductAttribute(),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('CheckOut')),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                  const SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItem,
                  ),
                  const ReadMoreText(
                    'This is s Product discription for easy care product. It can up to 4 lines. In this section, brief discussion of product...............................................For More details Please contact us on WhatsApp ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'Less',
                    trimCollapsedText: 'show more',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: Sizes.spaceBtwItem,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () => Get.to(const ProductReviewScreen()),
                          icon: const Icon(
                            Icons.arrow_right,
                            size: 28,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
