import 'package:finalyearproject/common/widgets/icons/circular_icons.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomAddCart extends StatelessWidget {
  const BottomAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace, vertical: Sizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? AppColor.darkerGrey : AppColor.light,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(Sizes.cardRadiusLg),
            topLeft: Radius.circular(Sizes.cardRadiusLg),
          )),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            const CircularIcon(
              icon: FontAwesomeIcons.minus,
              height: 40,
              width: 40,
              backgroundColor: AppColor.darkGrey,
              color: AppColor.white,
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem,
            ),
            Text(
              '2',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem,
            ),
            const CircularIcon(
              icon: Icons.add,
              height: 40,
              width: 40,
              backgroundColor: AppColor.black,
              color: AppColor.white,
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(Sizes.md),
                backgroundColor: AppColor.black,
                side: const BorderSide(color: AppColor.black)),
            child: const Text('Add to Cart'))
      ]),
    );
  }
}
