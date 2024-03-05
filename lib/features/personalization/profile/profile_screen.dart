import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/images/circular_image.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/features/personalization/profile/widgets/profile_menu.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(
                      imageUrl: AppImage.customer,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(height: Sizes.spaceBtwItem / 2),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItem),
              const SectionHeading(
                title: "Profile information",
                showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBtwItem),
              ProfileMenu(
                title: 'Name',
                value: 'First Name',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'User Name',
                value: 'UserName',
                onTap: () {},
              ),
              const SizedBox(height: Sizes.spaceBtwItem),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItem),
              const SectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: Sizes.spaceBtwItem),
              ProfileMenu(
                title: 'User ID',
                value: 'userid',
                icon: Icons.copy,
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Email',
                value: '@gmail.com',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: '0344....',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Gender',
                value: 'Male/female',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Date of birth',
                value: '01/03/2002',
                onTap: () {},
              ),
              const Divider(),
               const SizedBox(height: Sizes.spaceBtwItem),
               Center(
                child: TextButton(onPressed: (){}, child:const  Text('Delete Account ',style: TextStyle(color: Colors.red),)),
               )
            ],
          ),
        ),
      ),
    );
  }
}
