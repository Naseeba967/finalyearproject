import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class ShadowsStyle {
  static final vertcalProductShadoW = BoxShadow(
    color: AppColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0,2)
  );
  static final horizontalProductShadoW = BoxShadow(
    color: AppColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0,2)
  );
}
