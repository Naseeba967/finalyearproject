import 'package:finalyearproject/common/widgets/icons/circular_icons.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: FontAwesomeIcons.minus,
          width: 32,
          height: 32,
          size: Sizes.md,
          color: HelpersFunction.isDarkMode(context)
              ? AppColor.white
              : AppColor.dark,
          backgroundColor: HelpersFunction.isDarkMode(context)
              ? AppColor.darkerGrey
              : AppColor.light,
        ),
        const SizedBox(width: Sizes.spaceBtwItem),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: Sizes.spaceBtwItem),
        const CircularIcon(
            icon: FontAwesomeIcons.plus,
            width: 32,
            height: 32,
            size: Sizes.md,
            color: AppColor.white,
            backgroundColor: AppColor.primaryColor),
      ],
    );
  }
}
