import 'package:finalyearproject/common/style/shadows.dart';

import 'package:finalyearproject/common/widgets/customShape/container/rounded_container.dart';
import 'package:finalyearproject/common/widgets/icons/circular_icons.dart';
import 'package:finalyearproject/common/widgets/images/rounded_image.dart';
import 'package:finalyearproject/common/widgets/texts/product_price_text.dart';
import 'package:finalyearproject/common/widgets/texts/product_title_text.dart';
import 'package:finalyearproject/features/shop/screens/cart/cart.dart';
import 'package:finalyearproject/features/shop/screens/favourite/favourite_screen.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/product_detail.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProductsCartVertical extends StatelessWidget { 
  final productName ;
  final productPrice;   
  const ProductsCartVertical({super.key,required this.productName, required this.productPrice});
  @override
  Widget build(BuildContext context) {
   
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [ShadowsStyle.vertcalProductShadoW],
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          // color: dark ? AppColor.darkerGrey : AppColor.white,
          color: Colors.white),
      child: Column(
        children: [
          Container(color: Colors.white,
            height: 220,
            padding: const EdgeInsets.all(Sizes.sm),
          
            child: 
            Stack(children: [
          
              // const RoundedImage(
              //   imageUrl: 'assets/images/wheelchair.jpg',
              //   applyImageRadius: true,
              // ),
              Container(height: 500,color: Colors.white,
                child: InkWell(onTap: (){
                   Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  ProductDetailScreen()));
                },
                  child: Image(image: AssetImage("assets/images/wheelchair.jpg"))),),
              Positioned(
                top: 8,
                child: RoundedContainer(
                  radius: Sizes.sm,
                  backgroundColor: AppColor.secondaryColor.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.sm, vertical: Sizes.xs),
                  child: Text(
                    "25%",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: AppColor.black),
                  ),
                ),
              ),
           Positioned(
                  top: 8,
                  right: 0,
                  child: 
                  InkWell(
                    onTap: (){
 Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  FavouriteScreen()));
                    },
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                    ),
                  ))
            ]),
          ),
          const SizedBox(
            height: Sizes.spaceBtwItem / 2,
          ),
        Padding(
            padding: EdgeInsets.only(left: Sizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ProductTitleText(
                //   title: "$productName",
                //   isSmallSize: true,
                  
                // ),
                Text("$productName"),

                SizedBox(
                  height: Sizes.spaceBtwItem / 2,
                ),
             
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("$productPrice"),
                // ProductPriceText(
                //   price: "$productPrice",
                // ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: AppColor.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Sizes.cardRadiusMd),
                        bottomLeft:
                            Radius.circular(Sizes.productImageRadius))),
                child: const SizedBox(
                  width: Sizes.iconLg,
                  height: Sizes.iconLg,
                  child: Icon(
                    Icons.add,
                    color: AppColor.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
