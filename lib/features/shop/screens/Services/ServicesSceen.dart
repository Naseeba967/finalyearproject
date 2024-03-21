import 'package:finalyearproject/common/widgets/appbar/appbar.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/features/shop/screens/Services/widget/serviescard.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
           padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: Column(children: [
                SectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                 const SizedBox(
                height: Sizes.spaceBtwItem,
              ),
              ServicesCard(serviceName: "Physiotherapist", servicesProvideName: "Ali Abbas", location: "Mansehra")
             ,SizedBox(height: 10,),
              ServicesCard(serviceName: "Physcatrist", servicesProvideName: "Hamid", location: "Abbottabad")
             
            ],),
          )
        ],
     ),
      );
  }
}
