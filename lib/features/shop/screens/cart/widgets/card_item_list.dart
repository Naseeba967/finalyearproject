import 'package:finalyearproject/common/widgets/products/cart/add_remove_button.dart';
import 'package:finalyearproject/common/widgets/products/cart/cart_item.dart';
import 'package:finalyearproject/common/widgets/texts/product_price_text.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,
    this.showAddRemoveButton = true,
  });
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (_, __) => const SizedBox(
              height: Sizes.spaceBtwSection,
            ),
        separatorBuilder: (_, index) => Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const CartItems(),
                    if (showAddRemoveButton)
                      const SizedBox(
                        height: Sizes.defaultSpace,
                      ),
                    if (showAddRemoveButton)
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [AddRemoveButton()],
                          ),
                          ProductPriceText(price: 'PKR.256')
                        ],
                      )
                  ],
                ),
              ),
            ));
  }
}
