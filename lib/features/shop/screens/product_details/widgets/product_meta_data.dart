import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/images/circular_image.dart';
import 'package:t_shop/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:t_shop/common/widgets/texts/product_title_text.dart';
import 'package:t_shop/util/constants/enums.dart';
import 'package:t_shop/util/constants/image_strings.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sales Price
        Row(
          children: [
            //Sale
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: Colors.yellowAccent.withValues(alpha: 0.8),
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
            SizedBox(width: TSizes.spaceBtwItems),

            //Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),
        //Title
        TProductTitleText(title: "Green Nike Sports Shirt"),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Stock Status
        Row(
          children: [
            TProductTitleText(title: 'Status'),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.cosmeticsIcon,
              width: TSizes.iconLg,
              height: TSizes.iconLg,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            TBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
