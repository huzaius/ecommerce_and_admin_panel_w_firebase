import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/layouts/grid_layout.dart';
import 'package:t_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage7,
                  TImages.productImage11,
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              //Products
              TSectionHeading(title: "You might Like", onPressed: () {}),
              SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => TProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
