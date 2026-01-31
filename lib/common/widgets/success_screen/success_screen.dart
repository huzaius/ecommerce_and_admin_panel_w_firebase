import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:t_shop/common/styles/spacing_styles.dart';

import '../../../util/constants/sizes.dart';
import '../../../util/constants/text_strings.dart';
import '../../../util/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // Lottie image
                Lottie.asset(image, width: THelperFunctions.screenWidth() * .6),
                SizedBox(height: TSizes.spaceBtwSections),

                //Title & Subtitle
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                //Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text(TTexts.tContinue),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwItems),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
