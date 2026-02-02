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
import '../../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.lightGrey,
        ),
        child: Column(
          children: [
            //THumnail
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  //THmbnail Image
                  TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),

                  //Sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: Colors.yellowAccent.withValues(
                        alpha: 0.8,
                      ),
                      padding: EdgeInsets.symmetric(
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
                  Positioned(
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
            SizedBox(height: TSizes.spaceBtwItems / 2),

            //details
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                children: [
                  TProductTitleText(
                    title: 'Green Nike Air shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),

                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(width: TSizes.xs),
                      Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Price
                      TProductPriceText(price: '35.00', isLarge: false),

                      //Add to cart button
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              TSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: TColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Button

                  //Pricing
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            )
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            ),
    );
  }
}
