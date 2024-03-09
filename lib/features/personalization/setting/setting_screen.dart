import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/customShape/container/app_primary_header_container.dart';
import 'package:finalyearproject/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';

import 'package:finalyearproject/common/widgets/list_tile/profile_tile.dart';
import 'package:finalyearproject/features/personalization/address/address.dart';
import 'package:finalyearproject/features/personalization/profile/profile_screen.dart';
import 'package:finalyearproject/utils/constant/colors.dart';

import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppPrimaryHeaderContainer(
            child: Column(
              children: [
                Appbar(
                    title: Text(
                  'Account',
                  style: Theme.of(context).textTheme.headlineMedium!.apply(
                        color: AppColor.textwhite,
                      ),
                )),
                UserProfileTail(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(
                  height: Sizes.spaceBtwSection,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                const SectionHeading(
                  title: 'Account Setting',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItem,
                ),
                SettingMenuTile(
                    icon: Icons.home,
                    title: 'My Address',
                    subTitle: 'Set my shopping Address',
                    onTap: () => Get.to(() => const UserAddressScreen())),
                SettingMenuTile(
                    icon: Icons.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to check out',
                    onTap: () {}),
                SettingMenuTile(
                    icon: FontAwesomeIcons.bagShopping,
                    title: 'My Orders',
                    subTitle: 'In progressand completed Orders',
                    onTap: () {}),
                // SettingMenuTile(
                //     icon: FontAwesomeIcons.moneyBills,
                //     title: 'Bank Account',
                //     subTitle: 'Withdraw blank to registered bank account',
                //     onTap: () {}),
                // SettingMenuTile(
                //     icon: FontAwesomeIcons.bell,
                //     title: 'Notification',
                //     subTitle: 'Set any kind of notification ',
                //     onTap: () {}),
                // SettingMenuTile(
                //     icon: Icons.security,
                //     title: 'Account   Privacy',
                //     subTitle: 'Manage Data usage ',
                //     onTap: () {}),
                // App setting
                // const SizedBox(
                //   height: Sizes.defaultSpace,
                // ),
                // const SectionHeading(
                //   title: 'App Setting',
                //   showActionButton: false,
                // ),
                // const SizedBox(
                //   height: Sizes.spaceBtwItem,
                // ),
                // SettingMenuTile(
                //   icon: FontAwesomeIcons.upload,
                //   title: 'Get Data',
                //   subTitle: 'Set recomendation based on lacation',
                //   onTap: () {},
                // ),
                // SettingMenuTile(
                //   icon: Icons.location_city,
                //   title: 'GeaLocation',
                //   subTitle: 'Set recomendation based on lacation',
                //   onTap: () {},
                //   trailing: Switch(value: true, onChanged: (value) {}),
                // ),
                // SettingMenuTile(
                //   icon: Icons.security,
                //   title: 'Safe  Mode',
                //   subTitle: 'Search result is safe',
                //   onTap: () {},
                //   trailing: Switch(value: false, onChanged: (value) {}),
                // ),
                // SettingMenuTile(
                //   icon: Icons.image,
                //   title: 'The image Quality',
                //   subTitle: 'Set image quality to seen',
                //   onTap: () {},
                //   trailing: Switch(value: false, onChanged: (value) {}),
                // ),
                const SizedBox(
                  height: Sizes.spaceBtwSection,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('LogOut')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
