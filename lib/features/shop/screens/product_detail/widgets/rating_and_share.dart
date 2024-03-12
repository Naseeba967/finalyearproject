import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.star,
              size: 24,
              color: Colors.amber,
            ),
            const SizedBox(
              width: Sizes.spaceBtwItem / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0',
                  style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(
                text: '(199)',
              )
            ]))
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: Sizes.md,
          ),
        )
      ],
    );
  }
}
