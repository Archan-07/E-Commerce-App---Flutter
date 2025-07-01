import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/features/shop/screens/product_details/widgets/bottom_add_to_card_widget.dart';
import 'package:e_comm_app/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:e_comm_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:e_comm_app/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:e_comm_app/features/shop/screens/product_details/widgets/rating_and_share_widget.dart';
import 'package:e_comm_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCardWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1-- Product Image Slider
            const ProductImageSlider(),

            // 2-- Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share
                  const RatingAndShare(),

                  // Price, Title, Stock & Brand
                  const ProductMetadata(),
                  // Attributes
                  const ProductAttribute(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Description
                  const SectionHeading(
                    text: 'Description',
                    showActionButton: false,
                  ),
                  const ReadMoreText(
                    'This product description for Black Nike Jacket. There are more thing that can be added but im just practicing and nothing else',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SectionHeading(
                    text: 'Reviews (1999)',
                    onPressed: () => Get.to(() => const ProductReviews()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
