import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppCartCounterIcon extends StatelessWidget {
  const AppCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });
  final VoidCallback onPressed;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              FontAwesomeIcons.bagShopping,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "2",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: AppColor.white.withOpacity(0.5)),
            )),
          ),
        )
      ],
    );
  }
}
