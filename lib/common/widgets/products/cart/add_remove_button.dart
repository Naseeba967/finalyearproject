import 'package:finalyearproject/common/widgets/icons/circular_icons.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
     IconButton(onPressed: (){
      PersistentShoppingCart().incrementCartItemQuantity("123");
     }, icon: Icon(Icons.remove)),
        const SizedBox(width: Sizes.spaceBtwItem),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: Sizes.spaceBtwItem),
         IconButton(onPressed: (){
      PersistentShoppingCart().decrementCartItemQuantity("123");
     }, icon: Icon(Icons.add)),
      ],
    );
  }
}
