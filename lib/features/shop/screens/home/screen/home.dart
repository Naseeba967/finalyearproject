import 'package:finalyearproject/common/widgets/customShape/container/app_primary_header_container.dart';
import 'package:finalyearproject/common/widgets/customShape/container/search_container.dart';
import 'package:finalyearproject/common/widgets/layout/grid_layout.dart';
import 'package:finalyearproject/common/widgets/products/products_cart/products_cart_vertical.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/widgets/home_appbar.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/widgets/home_categories.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/widgets/home_promo_slider.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                  SearchContainer(
                    text: 'Search in Store',
                    icon: Icons.search,
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: Sizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Categories',
                          textColor: Colors.white,
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: Sizes.spaceBtwItem,
                        ),
                        HomeCategories(),
                        SizedBox(
                          height: Sizes.spaceBtwSection,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  const HomePromoSlider(
                    banners: [
                      'assets/images/wheelchair.jpg',
                      'assets/images/wheelchair2.jpg',
                      'assets/images/wheelchair3.jpg'
                    ],
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                  const SectionHeading(title: "Popular Products"),
                  GridLayout(
                    itemcount: 5,
                    itemBuilder: (_, index) =>
                     const 
                     ProductsCartVertical( productName: "Wheel chair", productPrice: "123"),
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
