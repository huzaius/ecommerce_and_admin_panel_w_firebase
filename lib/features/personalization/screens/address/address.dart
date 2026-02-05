import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_shop/features/personalization/screens/address/widgets/single_address.dart';
import 'package:t_shop/util/constants/colors.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../../../common/widgets/appBar/appbar.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(AddNewAddressScreen()),
        child: Icon(Icons.add, color: TColors.white),
      ),
      appBar: TAppBar(
        title: Text(
          "My Address",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: true),
              TSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
