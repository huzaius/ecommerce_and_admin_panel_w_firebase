import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/brands/brand_card.dart';
import 'package:t_shop/common/widgets/products/sortable/sortable_products.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../appBar/appbar.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Nike")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections),

              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
