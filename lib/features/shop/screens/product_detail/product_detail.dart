import 'package:finalyearproject/features/shop/screens/cart/widgets/card_item_list.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/bottom_add_cart.dart';
import 'package:finalyearproject/common/widgets/texts/section_heading.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/product_attribute.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/product_image_slider.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:finalyearproject/features/shop/screens/product_detail/widgets/rating_and_share.dart';
import 'package:finalyearproject/features/shop/screens/product_reviews/product_review.dart';
import 'package:finalyearproject/model/productModel.dart';
import 'package:finalyearproject/utils/constant/sizes.dart';
import 'package:get/get.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
ProductDetailScreen({super.key});

PersistentShoppingCart cart=PersistentShoppingCart();
// List<ItemModel> itemList=const [
// ItemModel(productId: "123", productName: "Easycare", productDescription: "Disable Person Product", productThumbnail: "no image", unitPrice: 3990)
// ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  bottomNavigationBar: const BottomAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                left: Sizes.defaultSpace,
                bottom: Sizes.defaultSpace,
                right: Sizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const RatingAndShare(),
                  const ProductMetaData(),
                  //   const ProductAttribute(),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Buy Now')),
                  ),
                  
                  PersistentShoppingCart().showAndUpdateCartItemWidget(
                    inCartWidget: 
                     SizedBox(width: double.infinity,
                       child: Container(height: 55,
                       decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red)),
                         child: Center(
                           child: Text("Remove",
                           style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 18,
                           color: Colors.black),),
                         ),
                       ),
                     ),
                    notInCartWidget:
                     SizedBox(width: double.infinity,
                       child: Container(height: 55,
                       decoration: BoxDecoration(color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                         child: Center(
                           child: Text("Add to cart",
                           style: TextStyle(
                            fontSize: 18,
                           color: Colors.white),),
                         ),
                       ),
                     ),
                     product: PersistentShoppingCartItem(
                      productId: "123", 
                      
                      productName: "`123",
                       unitPrice: double.parse("123"), 
                       quantity: 123)),
                  
                  // SizedBox(height: 20,),
                  //    SizedBox(
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //       onPressed: () {}, child: const Text('Add to Cart')),
                  // ),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                  const SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItem,
                  ),
                  const ReadMoreText(
                    'This is s Product discription for easy care product. It can up to 4 lines. In this section, brief discussion of product...............................................For More details Please contact us on WhatsApp ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'Less',
                    trimCollapsedText: 'show more',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: Sizes.spaceBtwItem,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () => Get.to(
                            const ProductReviewScreen()),
                          icon: const Icon(
                            Icons.arrow_right,
                            size: 28,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSection,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
