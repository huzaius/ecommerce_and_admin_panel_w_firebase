import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_shop/util/constants/colors.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../../../../util/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, _) => SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder: (context, index) => TRoundedContainer(
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.lightGrey,
        padding: EdgeInsets.all(TSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //ROw 1
            Row(
              children: [
                // 1 -Icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems / 2),

                // 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: TColors.primary,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        "07 Feb 2026",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                //Icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm),
                ),
              ],
            ),

            //Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 -Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2),

                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              "[#1256f3]",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      // 1 -Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems / 2),

                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping date",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              "07 Feb 2026",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
