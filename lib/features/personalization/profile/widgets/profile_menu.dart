import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.icon = Icons.arrow_right,
    required this.onTap,
  });
  final String title, value;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(Sizes.spaceBtwItem / 1.5),
        child: Row(
          children: [
            Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
                child: Icon(
              icon,
              size: 18,
            ))
          ],
        ),
      ),
    );
  }
}
