import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/appBar/appbar.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_shop/common/widgets/layouts/grid_layout.dart';
import 'package:t_shop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_shop/util/constants/image_strings.dart';
import 'package:t_shop/util/constants/sizes.dart';
import 'package:t_shop/util/helpers/helper_functions.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_with_verified_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/enums.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Store"),
        actions: [TCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    //search bar
                    SizedBox(height: TSizes.spaceBtwItems),
                    TSearchContainer(
                      text: "Search in store",
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: TSizes.spaceBtwSections),

                    //Feature brands
                    TSectionHeading(title: "Feature Brands", onPressed: () {}),
                    SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: TRoundedContainer(
                            padding: EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                //Icon
                                Flexible(
                                  child: TCircularImage(
                                    image: TImages.clothIcon,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        THelperFunctions.isDarkMode(context)
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                SizedBox(width: TSizes.spaceBtwItems / 2),

                                //Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
