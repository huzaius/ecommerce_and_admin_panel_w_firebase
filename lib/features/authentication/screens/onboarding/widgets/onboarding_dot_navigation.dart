import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_utility.dart';
import '../../../../../util/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,

      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigatorClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.white : TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
