import 'package:finalyearproject/common/widgets/products/cart/add_remove_button.dart';
import 'package:finalyearproject/common/widgets/products/cart/cart_item.dart';
import 'package:finalyearproject/common/widgets/texts/product_price_text.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,  this.showAddRemoveButton= true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (_, __) => const SizedBox(
              height: Sizes.spaceBtwSection,
            ),
        separatorBuilder: (_, index) =>  Column(
              children: [
                const CartItems(),
              if(showAddRemoveButton)  const SizedBox(
                  height: Sizes.defaultSpace,
                ),
             if(showAddRemoveButton)   const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                        ),
                        AddRemoveButton()
                      ],
                    ),
                    ProductPriceText(price: 'PKR.256')
                  ],
                )
              ],
            ));
  }
}
