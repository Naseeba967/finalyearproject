import 'package:finalyearproject/utils/constant/colors.dart';

import 'package:finalyearproject/utils/device/device_utils.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget implements PreferredSizeWidget {
  const Tabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return Material(
      child: TabBar(
          isScrollable: true,
          indicatorColor: AppColor.primaryColor,
          unselectedLabelColor: AppColor.darkGrey,
          labelColor: dark ? AppColor.white : AppColor.primaryColor,
          tabs: tabs),
    );
  }

  @override
 
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
