import 'package:flutter/material.dart';
import 'package:t_shop/common/widgets/appBar/appbar.dart';
import 'package:t_shop/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:t_shop/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:t_shop/util/constants/sizes.dart';

import '../../../../common/widgets/products/ratings/ratings_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APpBar
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      //body:
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and reviews are verified and are from peop;es who use the same type of decuce that you use',
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              //Overall Product rating
              TOverallProductRating(),
              TRatingBarIndicator(rating: 3.5),
              SizedBox(height: TSizes.spaceBtwItems),
              Text("12611", style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: TSizes.spaceBtwSections),

              //User Review List
              TUserReviewCard(),
              TUserReviewCard(),
              TUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
