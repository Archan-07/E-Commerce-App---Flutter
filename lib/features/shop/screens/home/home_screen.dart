import 'package:e_comm_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_comm_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_comm_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_comm_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_comm_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_comm_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_comm_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/constants/text_strings.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Appbar
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Searchbar
                  SearchContainer(text: TTexts.searchBarText),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        SectionHeading(
                          textColor: Colors.white,
                          text: TTexts.categoryTitle,
                          showActionButton: false,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        //category
                        HomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  SectionHeading(
                    textColor: THelperFunctions.isDarkMode(context)
                        ? Colors.white
                        : Colors.black,
                    text: 'Popular Products',
                    onPressed: () => Get.to(()=>const AllProducts()),
                  ),

                  //Popular Products
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
