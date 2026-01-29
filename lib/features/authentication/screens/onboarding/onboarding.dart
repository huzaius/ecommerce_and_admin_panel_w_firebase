import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:t_shop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:t_shop/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:t_shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_shop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_shop/util/constants/image_strings.dart';
import 'package:t_shop/util/constants/text_strings.dart';

import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scroll Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.tOnBoardingImage1,
                title: TTexts.tOnBoardingTitle1,
                subTitle: TTexts.tOnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.tOnBoardingImage2,
                title: TTexts.tOnBoardingTitle2,
                subTitle: TTexts.tOnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.tOnBoardingImage3,
                title: TTexts.tOnBoardingTitle3,
                subTitle: TTexts.tOnBoardingSubTitle3,
              ),
            ],
          ),
          //Skip Button
          OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          //Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
