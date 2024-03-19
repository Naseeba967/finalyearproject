import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/products/products_cart/app_cart_counter_icon.dart';
import 'package:finalyearproject/features/shop/screens/cart/cart.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Appbar(
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppColor.grey),
            ),
            SizedBox(
              height: 4,
            ),
            Text(AppText.homeAppBarsubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: AppColor.white)),
          ],
        ),
      ),
      action: [
        // AppCartCounterIcon(
        //   onPressed: () => Get.to(() => const CartScreen()),
        //   iconColor: Colors.red,
        // )
        PersistentShoppingCart().showCartItemCountWidget(
          cartItemCountWidgetBuilder: (itemcount)=>
            IconButton(onPressed:
             () => Get.to(() => const CartScreen()),
             icon: Badge(
              label: Text(itemcount.toString()),
              child: Icon(Icons.shopping_bag,color: Colors.white,size: 25,)
              ,))
          )
      ],
    );
  }
}
