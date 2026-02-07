import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/image_strings.dart';
import '../../../../../util/helpers/helper_functions.dart';
import '../../sub_category/sub_categories.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white,
            onTap: () => Get.to(() => SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
