import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_shop/common/widgets/appBar/appbar.dart';
import 'package:t_shop/common/widgets/icons/circular_icons.dart';
import 'package:t_shop/common/widgets/layouts/grid_layout.dart';
import 'package:t_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_shop/navigation_menu.dart';

import '../../../../util/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.offAll(() => NavigationMenu()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
