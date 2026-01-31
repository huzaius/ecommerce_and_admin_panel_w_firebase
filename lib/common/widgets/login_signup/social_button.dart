import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_strings.dart';
import '../../../util/constants/sizes.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Google
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: dark ? TColors.darkGrey : TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              TImages.tGoogleLogo,
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems),

        //Facebook
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: dark ? TColors.darkGrey : TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              TImages.tFacebookLogo,
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
