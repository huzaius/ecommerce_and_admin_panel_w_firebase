import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';
import 'package:t_shop/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:t_shop/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_shop/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:t_shop/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_shop/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:t_shop/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:t_shop/util/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Imge Slider
            TProductImageSlider(),

            //Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share Button
                  TRatingAndShare(),

                  //Price, Title ,Stock & Brand
                  TProductMetaData(),

                  //Attributes
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //Description
                  TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  ReadMoreText(
                    "This product description for BLue NIke Sleeve less Vest. There is more things to add that can make it much more beutiful ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  //Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(199)',
                        onPressed: () {},
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(ProductReviewsScreen()),
                        icon: Icon(Iconsax.arrow_right_3),
                      ),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
