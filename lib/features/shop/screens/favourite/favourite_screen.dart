import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/icons/circular_icons.dart';
import 'package:finalyearproject/common/widgets/layout/grid_layout.dart';
import 'package:finalyearproject/common/widgets/products/products_cart/products_cart_vertical.dart';
import 'package:finalyearproject/features/shop/screens/home/screen/home_screen.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text(
          'favourite',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          CircularIcon(
            icon: Icons.add,
            onPressed: () {
              Get.to(const HomeScreen());
            },
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(Sizes.defaultSpace),
      child: Column(
        children: [
       GridLayout(itemcount: 4, itemBuilder: (_, index)=> 
       const  ProductsCartVertical( productName: "Wheel chair", productPrice: "123"),)
        ],
      ),
      
        ),
      ),
    );
  }
}
