import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/appBar/appbar.dart';
import 'package:t_shop/common/widgets/images/rounded_images.dart';
import 'package:t_shop/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';
import 'package:t_shop/util/constants/image_strings.dart';
import 'package:t_shop/util/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Sports Shirts"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              TRoundedImage(
                width: double.infinity,
                applyImageRadius: true,
                imageUrl: TImages.promoBanner2,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              //Sub-CAtegories
              Column(
                children: [
                  //Heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  SizedBox(height: TSizes.spaceBtwItems),

                  //Sub-Categories
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => TProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
