import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/appbar/tab_bar.dart';

import 'package:finalyearproject/common/widgets/customShape/container/search_container.dart';
import 'package:finalyearproject/common/widgets/layout/grid_layout.dart';
import 'package:finalyearproject/common/widgets/products/products_cart/app_cart_counter_icon.dart';

import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/features/shop/screens/store/widgets/category_tab.dart';
import 'package:finalyearproject/utils/constant/colors.dart';

import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

import '../home/screen/widgets/home_promo_slider.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: Appbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
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
                          // const SizedBox(
                          //   height: Sizes.spaceBtwSection,
                          // ),
                          // Text("hsahbsahb")
                          HomePromoSlider(
                            banners: [
                              'assets/images/wheelchair.jpg',
                              'assets/images/wheelchair2.jpg',
                              'assets/images/wheelchair3.jpg'
                            ],
                          ),
                        ],
                      ),
                    ),
                    bottom: const Tabbar(
                      tabs: [
                        Tab(
                          child: Text('Dumb'),
                        ),
                        Tab(
                          child: Text('Deaf'),
                        ),
                        Tab(
                          child: Text('Blind'),
                        ),
                        Tab(
                          child: Text('Walkless'),
                        ),
                        Tab(
                          child: Text('Gym'),
                        ),
                        Tab(
                          child: Text('Medical'),
                        ),
                        Tab(
                          child: Text('Services'),
                        )
                      ],
                    ))
              ];
            },
            body: const TabBarView(children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ])),
      ),
    );
  }
}
