import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appBar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icons.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.lightGrey,
        child: Stack(
          children: [
            //Main Product Image
            SizedBox(
              width: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(TImages.productImage5)),
                ),
              ),
            ),

            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, _) =>
                      SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 8,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => TRoundedImage(
                    imageUrl: TImages.productImage13,
                    width: 80,
                    backgroundColor: dark
                        ? TColors.darkGrey
                        : TColors.lightGrey,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSizes.sm),
                  ),
                ),
              ),
            ),

            // AppBar ICon
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5, color: TColors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
