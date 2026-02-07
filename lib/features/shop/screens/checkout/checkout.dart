import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:t_shop/common/widgets/appBar/appbar.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_shop/common/widgets/success_screen/success_screen.dart';
import 'package:t_shop/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:t_shop/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:t_shop/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_shop/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:t_shop/navigation_menu.dart';
import 'package:t_shop/util/constants/colors.dart';
import 'package:t_shop/util/constants/image_strings.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Items in Cart
              TCartItems(showAddRemoveButtons: false),
              SizedBox(height: TSizes.spaceBtwSections),

              //Coupon TextFiedl
              TCouponCode(),
              SizedBox(height: TSizes.spaceBtwSections),

              //Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    //Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Divider
                    Divider(),
                    //PAyment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //Address
                    TBillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfullyRegisterAnimation,
              title: "Payment Success",
              subTitle: "Your item will be shipped soon!",
              onPressed: () => Get.offAll(() => NavigationMenu()),
            ),
          ),
          child: Text('Checkout \$256'),
        ),
      ),
    );
  }
}
