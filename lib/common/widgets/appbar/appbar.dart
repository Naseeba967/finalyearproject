import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/device/device_utils.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.action,
      this.leadingOnPress,
      this.leadingIcon});
  final Widget? title;
  final bool showBackArrow;
  final List<Widget>? action;
  final VoidCallbackAction? leadingOnPress;
  final IconData? leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.arrow_back,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: () => leadingOnPress, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
