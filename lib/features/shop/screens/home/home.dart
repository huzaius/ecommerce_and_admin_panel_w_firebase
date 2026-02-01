import 'package:flutter/material.dart';
import 'package:t_shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_shop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_shop/util/constants/colors.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Container
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBAr
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //Searchbar
                  TSearchContainer(text: 'Search in store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Heading
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Promo Slider
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                  TImages.banner2,
                  TImages.banner3,
                  TImages.banner4,
                ],
              ),
            ),

            //Popular products
            TProductCardVertical(),
          ],
        ),
      ),
    );
  }
}
