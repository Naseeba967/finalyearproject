import 'package:finalyearproject/common/widgets/customShape/container/circular_container.dart';
import 'package:finalyearproject/common/widgets/customShape/curvedEdge/curved_edge_widget.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidgets(
      child: Container(
        color: AppColor.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -250,
                right: -250,
                child: CircularContainer(
                  backgroundColor: AppColor.textwhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                    backgroundColor: AppColor.textwhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
