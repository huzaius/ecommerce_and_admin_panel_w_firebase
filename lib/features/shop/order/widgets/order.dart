import 'package:flutter/material.dart';
import 'package:t_shop/features/shop/order/widgets/order_list_items.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../../../common/widgets/appBar/appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),

        //Ordders
        child: TOrderListItems(),
      ),
    );
  }
}
