import 'package:finalyearproject/common/widgets/customShape/container/circular_container.dart';
import 'package:finalyearproject/common/widgets/images/rounded_image.dart';

import 'package:finalyearproject/features/shop/screens/home/controller/home_controller.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePromoSlider extends StatelessWidget {
  const HomePromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banners.map((url) => RoundedImage(imageUrl: url)).toList()),
        const SizedBox(
          height: Sizes.spaceBtwItem,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? AppColor.primaryColor
                        : AppColor.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
