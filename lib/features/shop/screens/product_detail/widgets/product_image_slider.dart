import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/customShape/curvedEdge/curved_edge_widget.dart';
import 'package:finalyearproject/common/widgets/icons/circular_icons.dart';
import 'package:finalyearproject/common/widgets/images/rounded_image.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/image_strings.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelpersFunction.isDarkMode(context);
    return CurvedEdgeWidgets(
      child: Container(
        color: dark ? AppColor.grey : AppColor.light,
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                  height: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(Sizes.productImageRadius),
                    child: Image(
                        image: AssetImage("assets/images/wheelchair.jpg")),
                  )),
            ),
            const Appbar(
              showBackArrow: true,
              action: [
                CircularIcon(
                  icon: FontAwesomeIcons.heart,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
