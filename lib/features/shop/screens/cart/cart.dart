import 'package:finalyearproject/common/widgets/appbar/appbar.dart';

import 'package:finalyearproject/features/shop/screens/cart/widgets/card_item_list.dart';
import 'package:finalyearproject/features/shop/screens/checkOut/check_out.dart';

import 'package:finalyearproject/utils/constant/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
          showBackArrow: true,
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: const Padding(
        padding: EdgeInsets.all(
          Sizes.defaultSpace / 2,
        ),
        child: CartItemsList(),
      ),
      bottomNavigationBar: 
      Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
         
            onPressed: () => Get.to(() => const CheckOut()),
            child: const Text('CheckOut')),
      ),
    );
  }
}
