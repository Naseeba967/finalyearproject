import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddresses});
  final bool selectedAddresses;
  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      padding: const EdgeInsets.all(Sizes.md),
      showBoder: true,
      backgroundColor: selectedAddresses
          ? AppColor.primaryColor.withOpacity(0.5)
          : Colors.transparent,
      boderColor: selectedAddresses
          ? Colors.transparent
          : dark
              ? AppColor.darkerGrey
              : AppColor.darkGrey,
      margin: const EdgeInsets.only(bottom: Sizes.defaultSpace),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 5,
              child: Icon(
                selectedAddresses ? FontAwesomeIcons.circleCheck : null,
                color: selectedAddresses
                    ? dark
                        ? AppColor.light
                        : AppColor.dark
                    : null,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Naseeba',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: Sizes.sm / 2,
              ),
              const Text(
                '(+92) 3105958010',
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: Sizes.sm / 2,
              ),
              const Text(
                'KPK, Mansehra Baffa Maira',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
