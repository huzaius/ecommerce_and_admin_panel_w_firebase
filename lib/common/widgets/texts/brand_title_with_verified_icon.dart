import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/enums.dart';
import '../../../util/constants/sizes.dart';
import 'brand_title_text.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.maxLines = 1,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs),
      ],
    );
  }
}
