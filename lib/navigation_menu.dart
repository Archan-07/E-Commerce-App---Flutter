import 'package:e_comm_app/features/personalization/screens/settings/setting.dart';
import 'package:e_comm_app/features/shop/screens/home/home_screen.dart';
import 'package:e_comm_app/features/shop/screens/store/store_screen.dart';
import 'package:e_comm_app/features/shop/screens/wishlist/wishlist.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          backgroundColor: dark ? Colors.black : Colors.white,
          indicatorColor: dark
              ? TColors.white.withOpacity(0.1)
              : TColors.dark.withOpacity(0.1),
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) =>
              controller.selectedIndex.value = value,
          height: 70,

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Iconsax.shop, color: Colors.blue),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart, color: Colors.red),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user, color: Colors.green),
              label: 'Profile',
            ),
          ],
        );
      }),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const Wishlist(),
    const Setting(),
  ];
}
