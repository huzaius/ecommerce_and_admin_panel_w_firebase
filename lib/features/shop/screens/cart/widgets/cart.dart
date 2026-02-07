import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_shop/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:t_shop/features/shop/screens/checkout/checkout.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../../../../common/widgets/appBar/appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: Text('Checkout \$256'),
        ),
      ),
    );
  }
}
