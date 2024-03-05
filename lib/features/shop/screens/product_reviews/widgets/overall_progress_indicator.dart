import 'package:finalyearproject/features/shop/screens/product_reviews/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';
class OverAllProgressIndicator extends StatelessWidget {
  const OverAllProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.7',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingLinearProgressIndicator(
                text: '5',
                value: 0.5,
              ),
              RatingLinearProgressIndicator(
                text: '4',
                value: 0.3,
              ),
              RatingLinearProgressIndicator(
                text: '3',
                value: 0.1,
              ),
              RatingLinearProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              RatingLinearProgressIndicator(
                text: '1',
                value: 0.2,
              ),
           
            ],
          ),
        )
      ],
    );
  }
}
