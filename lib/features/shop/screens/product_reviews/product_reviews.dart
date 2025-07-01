import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/products/rating/custom_ratingbar_indicator.dart';
import 'package:e_comm_app/features/shop/screens/product_reviews/widget/overall_product_rating.dart';
import 'package:e_comm_app/features/shop/screens/product_reviews/widget/user_review_card.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text('Reviews and Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Rating and reviews are verified and are from people who use the same type of device that you see',
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Overall product rating
              const OverAllProductRating(),
              const CustomRatingBarIndicator(rating: 4.7),
              Text('12,000', style: Theme.of(context).textTheme.bodySmall),

              const SizedBox(height: TSizes.spaceBtwSections),

              //User Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
