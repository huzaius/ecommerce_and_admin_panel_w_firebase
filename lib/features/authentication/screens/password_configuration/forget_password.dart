import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_shop/features/authentication/screens/password_configuration/password_reset.dart';
import 'package:t_shop/util/constants/text_strings.dart';

import '../../../../util/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading
              Text(
                TTexts.tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections),
              Text(
                TTexts.tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: TSizes.spaceBtwSections * 2),

              /// Text Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(ResetPassword()),
                  child: Text(TTexts.submit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
