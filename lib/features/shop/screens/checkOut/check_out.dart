import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/features/shop/screens/cart/widgets/card_item_list.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return Scaffold(
      appBar: Appbar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              // const CartItemsList(
              //   showAddRemoveButton: false,
              // ),
              // const SizedBox(
              //   height: Sizes.spaceBtwItem,
              // ),
              RoundedContainer(
                showBoder: true,
                backgroundColor: AppColor.white,
                padding: const EdgeInsets.only(
                    top: Sizes.sm,
                    bottom: Sizes.sm,
                    right: Sizes.sm,
                    left: Sizes.md),
                child: Row(children: [
                  Flexible(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'have Promo code? Enter here',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none),
                  )),
                  SizedBox(
                      width: 80,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              foregroundColor: dark
                                  ? AppColor.white.withOpacity(0.5)
                                  : AppColor.black.withOpacity(0.5),
                              backgroundColor: Colors.grey.withOpacity(0.2),
                              side: BorderSide(
                                  color: Colors.grey.withOpacity(0.1))),
                          child: const Text('Apply')))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
