import 'package:e_comm_app/common/widgets/brands/brand_showcase.dart';
import 'package:e_comm_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_comm_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              const BrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),
              const BrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Products
              SectionHeading(
                text: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              GridLayout(
                itemCount: 4,
                itemBuilder: (p0, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
