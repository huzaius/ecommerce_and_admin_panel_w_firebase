import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';
import 'package:t_shop/util/constants/image_strings.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: "Billing Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 55,
              backgroundColor: dark ? TColors.lightGrey : TColors.white,
              padding: EdgeInsets.all(TSizes.md),
              child: Image(
                image: AssetImage(TImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),

            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
