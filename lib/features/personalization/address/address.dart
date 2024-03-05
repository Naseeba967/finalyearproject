import 'package:finalyearproject/common/widgets/appbar/appbar.dart';

import 'package:finalyearproject/features/personalization/address/add_new_address.dart';
import 'package:finalyearproject/features/personalization/address/single_address.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: AppColor.primaryColor,
        child: const Icon(Icons.add),
      ),
      appBar: Appbar(
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: 
            [
              SingleAddress(selectedAddresses: true),
                  SingleAddress(selectedAddresses: false),
              ],
          ),
        ),
      ),
    );
  }
}
