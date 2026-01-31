import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:t_shop/common/widgets/success_screen/success_screen.dart';
import 'package:t_shop/features/authentication/screens/login/login.dart';
import 'package:t_shop/util/constants/image_strings.dart';
import 'package:t_shop/util/constants/text_strings.dart';
import 'package:t_shop/util/helpers/helper_functions.dart';

import '../../../../util/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                //image
                Image(
                  image: AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * .6,
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                //Title & Subtitle
                Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),
                Text(
                  "support@huzaius.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),
                Text(
                  TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                //BUttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    //Success Screen onPressed
                    onPressed: () => Get.to(
                      SuccessScreen(
                        image: TImages.successfullyRegisterAnimation,
                        title: TTexts.yourAccountCreatedTitle,
                        subTitle: TTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => LoginScreen()),
                      ),
                    ),
                    child: Text(TTexts.tContinue),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwItems),

                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(TTexts.resendEmail),
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
