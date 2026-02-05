import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_shop/util/constants/colors.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../../../../util/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? TColors.darkerGrey
          : TColors.grey,
      backgroundColor: selectedAddress
          ? TColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),

      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                        ? TColors.lightGrey
                        : TColors.dark.withValues(alpha: 0.8)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: TSizes.sm / 2),
              Text(
                '(+91) 9876543210',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: TSizes.sm / 2),
              Text(
                '82356 Timmy Coves,South Liana,Maine, 87665, USA',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
              SizedBox(height: TSizes.sm / 2),
            ],
          ),
        ],
      ),
    );
  }
}
