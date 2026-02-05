import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../util/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, _) => SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 15,
      itemBuilder: (_, index) => Column(
        children: [
          TCartItem(),
          if (showAddRemoveButtons) SizedBox(height: TSizes.spaceBtwItems),

          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    //Add Remove Buttons
                    TProductQuantityWithAddAndRemoveButton(),
                  ],
                ),

                //Add Remove Item
                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
