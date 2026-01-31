import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_shop/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_shop/util/constants/sizes.dart';
import 'package:t_shop/util/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../util/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ,Title & Subtitle
              Text(
                TTexts.tSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              //Form
              TSignUpForm(dark: dark),
              SizedBox(height: TSizes.spaceBtwSections),
              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections),
              //Footer
              TSocialButton(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}
