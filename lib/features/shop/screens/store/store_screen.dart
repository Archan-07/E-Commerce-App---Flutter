import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/appbar/custom_tabbar.dart';
import 'package:e_comm_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_comm_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_comm_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_comm_app/common/widgets/brands/brand_card.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/features/shop/screens/all_brands/all_brands.dart';
import 'package:e_comm_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_comm_app/utils/constants/colors.dart';

import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: const [CartCounterIcon()],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      //Search bar
                      const SearchContainer(
                        text: 'Search in store',
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      // Featured Brands
                      SectionHeading(
                        text: 'Featured Brands',
                        onPressed: () => Get.to(() => const AllBrands()),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      GridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) =>
                            const BrandCard(showBorder: true),
                      ),
                    ],
                  ),
                ),

                //Tabs
                bottom: const CustomTabbar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [for (int i = 0; i < 5; i++) const CategoryTab()],
          ),
        ),
      ),
    );
  }
}
