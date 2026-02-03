import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_shop/common/widgets/appBar/appbar.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_shop/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';

import '../../../../common/widgets/list_tile/profile_tile.dart';
import '../../../../util/constants/sizes.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      "Settings",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),

                  //User Profile Card
                  TProfileTile(onPressed: () => Get.to(ProfileScreen())),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //BOdy
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Account Sttings
                  TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subtitle: "Set Shopping delivery address",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "Add, remove products and move to cart",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "In progress and completed orders",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subtitle: "Withdrawn balance to registered bank account",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subtitle: "List of all discounted coupons",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subtitle: "Set notification messages",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subtitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),

                  //App Settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subtitle: "Upload Data to your Cloud Firebase",
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "Set Recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode ",
                    subtitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subtitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //Logout Button
                  SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Logout",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
