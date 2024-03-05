import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class AppRatingBarIndicator extends StatelessWidget {
  const AppRatingBarIndicator({
    super.key, required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        unratedColor: AppColor.grey,
        itemSize: 20,
        rating: rating,
        itemBuilder: (_, __) => const Icon(
              Icons.star,
              color: AppColor.primaryColor,
            ));
  }
}