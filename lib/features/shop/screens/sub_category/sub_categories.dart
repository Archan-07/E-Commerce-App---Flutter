import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/images/rounded_images.dart';
import 'package:e_comm_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: Text("Sports"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const RoundedImages(
                width: double.infinity,
                height: null,
                imageUrl: TImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Sub-Categories
              Column(
                children: [
                  SectionHeading(
                    text: 'Sub Category',
                    showActionButton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) =>
                          const ProductCardHorizontal(),
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: TSizes.spaceBtwItems),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
