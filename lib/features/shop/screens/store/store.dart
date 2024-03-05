import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/appbar/tab_bar.dart';
import 'package:finalyearproject/common/widgets/brand/brand_card.dart';

import 'package:finalyearproject/common/widgets/customShape/container/search_container.dart';
import 'package:finalyearproject/common/widgets/layout/grid_layout.dart';
import 'package:finalyearproject/common/widgets/products/products_cart/app_cart_counter_icon.dart';

import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/features/shop/screens/store/widgets/category_tab.dart';
import 'package:finalyearproject/utils/constant/colors.dart';

import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: Appbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            AppCartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: HelpersFunction.isDarkMode(context)
                        ? AppColor.black
                        : AppColor.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(Sizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: Sizes.spaceBtwItem,
                          ),
                          const SearchContainer(
                            text: "Search in Store",
                            showBoder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: Sizes.spaceBtwSection,
                          ),
                          const SectionHeading(
                            title: 'Featured Brand',
                            showActionButton: true,
                          ),
                          const SizedBox(
                            height: Sizes.spaceBtwItem / 1.5,
                          ),
                          GridLayout(
                              itemcount: 4,
                              mainAxisExtent: 88,
                              itemBuilder: (_, index) {
                                return const BrandCard(
                                  showBoder: true,
                                );
                              }),
                        ],
                      ),
                    ),
                    bottom: const Tabbar(
                      tabs: [
                        Tab(
                          child: Text('Dumb'),
                        ),
                        Tab(
                          child: Text('deaf'),
                        ),
                        Tab(
                          child: Text('blind'),
                        ),
                      ],
                    ))
              ];
            },
            body: const TabBarView(children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ])),
      ),
    );
  }
}
