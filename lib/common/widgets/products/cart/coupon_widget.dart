import 'package:flutter/material.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
        top: TSizes.sm,
        bottom: TSizes.sm,
        right: TSizes.sm,
        left: TSizes.md,
      ),
      child: Row(
        children: [
          //TextField
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Have a coupon code? Enter here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          //Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: dark
                    ? TColors.white.withValues(alpha: 0.5)
                    : TColors.dark.withValues(alpha: 0.5),
                foregroundColor: TColors.grey.withValues(alpha: 0.2),
                side: BorderSide(color: TColors.grey.withValues(alpha: 0.1)),
              ),
              child: Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}
