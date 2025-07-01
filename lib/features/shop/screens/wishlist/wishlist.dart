import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/icons/circular_icon.dart';
import 'package:e_comm_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_comm_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_comm_app/navigation_menu.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: () =>
                Get.find<NavigationController>().selectedIndex.value = 0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 5,
                itemBuilder: (p0, index) => const ProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
