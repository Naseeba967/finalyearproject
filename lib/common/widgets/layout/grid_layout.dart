
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout( {
    super.key,
     required this.itemcount,
     required this.itemBuilder,
    this.mainAxisExtent = 288,
  });
  final int itemcount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemcount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: Sizes.gridViewSpacing,
            crossAxisSpacing: Sizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent,
            crossAxisCount: 2),
        itemBuilder: itemBuilder);
  }
}
