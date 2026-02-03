import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/images/circular_image.dart';
import 'package:t_shop/common/widgets/texts/section_heading.dart';
import 'package:t_shop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_shop/util/constants/colors.dart';
import 'package:t_shop/util/constants/image_strings.dart';

import '../../../../common/widgets/appBar/appbar.dart';
import '../../../../util/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text("Profile")),

      //BOdy
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              //Details
              SizedBox(height: TSizes.spaceBtwSections / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              // Heading Personal Info
              TSectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(onPressed: () {}, title: 'Name', value: 'Gynak'),
              TProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'Huzaius',
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              SizedBox(height: TSizes.spaceBtwSections / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              //Heading Personal Info
              // Heading Personal Info
              TSectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(onPressed: () {}, title: 'User ID', value: '45698'),
              TProfileMenu(
                onPressed: () {},
                title: 'Email',
                value: 'huzaius@example.com',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+773 936-5928',
              ),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              TProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: 'Oct 7 , 2002',
              ),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Close Account",
                    style: TextStyle(color: TColors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
