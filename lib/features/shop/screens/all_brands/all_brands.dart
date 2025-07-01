import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/brands/brand_card.dart';
import 'package:e_comm_app/common/widgets/brands/brand_product.dart';
import 'package:e_comm_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const SectionHeading(text: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Brands
              GridLayout(
                itemCount: 10,
                itemBuilder: (p0, index) => BrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProduct()),
                ),

                mainAxisExtent: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
