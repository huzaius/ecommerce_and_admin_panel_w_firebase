import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_shop/common/styles/shadows.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_shop/common/widgets/images/rounded_images.dart';
import 'package:t_shop/util/constants/image_strings.dart';
import 'package:t_shop/util/constants/sizes.dart';
import 'package:t_shop/util/helpers/helper_functions.dart';

import '../../../../util/constants/colors.dart';
import '../../icons/circular_icons.dart';
import '../../texts/brand_title_with_verified_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Row(
        children: [
          //THumnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: dark ? TColors.dark : TColors.grey,
            child: Stack(
              children: [
                //THmbnail Image
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: TRoundedImage(
                    imageUrl: TImages.productImage19,
                    applyImageRadius: true,
                  ),
                ),

                //Sale tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: Colors.yellowAccent.withValues(alpha: 0.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child: Text(
                      "25%",
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: TColors.black),
                    ),
                  ),
                ),

                //Favourite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart5,
                    color: TColors.red,
                  ),
                ),
              ],
            ),
          ),

          //details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: 'Green Nike Air shoes',
                        smallSize: true,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 2),
                      TBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Price
                      const Flexible(child: TProductPriceText(price: '35.00')),

                      //Add to cart button
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              TSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: TColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
