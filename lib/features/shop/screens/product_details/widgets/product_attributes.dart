import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_shop/common/widgets/texts/product_price_text.dart';
import 'package:t_shop/common/widgets/texts/product_title_text.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Select product attribute Priicng & Descriptioin
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              //Title Price and Stock Status
              Row(
                children: [
                  TSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(title: 'Price', smallSize: true),
                          SizedBox(width: TSizes.spaceBtwItems),

                          //Actual Price
                          Text(
                            '\$250',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: TSizes.spaceBtwItems),

                          //Sale Price
                          TProductPriceText(price: '175'),
                        ],
                      ),

                      //Stock
                      Row(
                        children: [
                          TProductTitleText(title: 'Stock : ', smallSize: true),
                          Text(
                            "In Stock ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),

                  //SAle Price
                ],
              ),
              //Variation Description
              TProductTitleText(
                title:
                    "This Description of Product and it can go up to 4 lines of text",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwSections),
        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: TSizes.spaceBtwItems / 1.5,
              children: [
                TSectionHeading(title: 'Colors', showActionButton: false),
                SizedBox(height: TSizes.spaceBtwItems / 2),

                TChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size', showActionButton: false),
            SizedBox(height: TSizes.spaceBtwItems / 2),

            Wrap(
              spacing: TSizes.spaceBtwItems / 1.5,
              children: [
                TChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
