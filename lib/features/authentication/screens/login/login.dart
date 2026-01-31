import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:t_shop/common/styles/spacing_styles.dart';
import 'package:t_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_shop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_shop/util/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo ,Title & Subtitle
              TLoginHeader(dark: dark),

              //Form
              TLoginForm(),

              //Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
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
