import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_strings.dart';
import '../images/circular_image.dart';

class TProfileTile extends StatelessWidget {
  const TProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.productImage11,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Huzaius",
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: TColors.white),
      ),
      subtitle: Text(
        "huzaius@example.com",
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit, color: TColors.white),
      ),
    );
  }
}
