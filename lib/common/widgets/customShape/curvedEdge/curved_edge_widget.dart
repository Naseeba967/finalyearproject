import 'package:finalyearproject/common/widgets/customShape/curvedEdge/custom_curved_edge.dart';
import 'package:flutter/material.dart';
class CurvedEdgeWidgets extends StatelessWidget {
  const CurvedEdgeWidgets({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: child,
    );
  }
}