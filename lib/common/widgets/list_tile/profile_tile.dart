import 'package:finalyearproject/common/widgets/images/circular_image.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfileTail extends StatelessWidget {
  const UserProfileTail({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        imageUrl: AppImage.admin,
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: Text(
        'User',
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: AppColor.textwhite,
            ),
      ),
      subtitle: Text(
        'email@gmail.com',
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: AppColor.textwhite,
            ),
      ),
      trailing: IconButton(
          onPressed: onPressed, icon: const Icon(FontAwesomeIcons.solidEdit)),
    );
  }
}
