import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/products/rating/rating_bar_incicator.dart';

import 'package:finalyearproject/features/shop/screens/product_reviews/widgets/overall_progress_indicator.dart';
import 'package:finalyearproject/features/shop/screens/product_reviews/widgets/user_review.dart';

import 'package:finalyearproject/utils/constant/sizes.dart';

import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(
        title: Text('Review & Rating'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Rating and reviews are verified'),
              const SizedBox(
                height: Sizes.spaceBtwItem,
              ),
              const OverAllProgressIndicator(),
              const AppRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '12,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSection,
              ),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
