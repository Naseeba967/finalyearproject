import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
class RatingLinearProgressIndicator extends StatelessWidget {
  const RatingLinearProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: DeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: AppColor.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(AppColor.primaryColor),
            ),
          ),
        )
      ],
    );
  }
}
