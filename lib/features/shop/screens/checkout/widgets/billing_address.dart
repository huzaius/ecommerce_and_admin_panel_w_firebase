import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text('Huzaius', style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            Icon(
              Icons.phone,
              color: dark ? TColors.grey : TColors.dark,
              size: 16,
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '+1 234 567 890',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(
              Icons.location_history,
              color: dark ? TColors.grey : TColors.dark,
              size: 16,
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: Text(
                "South Liana, Main 4658, USA",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
