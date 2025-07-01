import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_comm_app/common/widgets/list_tiles/setting_menutiles.dart';
import 'package:e_comm_app/common/widgets/list_tiles/user_profile_listtile.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/features/personalization/screens/address/address.dart';
import 'package:e_comm_app/features/shop/screens/order/order.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppbar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: Colors.white),
                    ),
                  ),

                  //Profile card
                  const UserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Setting
                  const SectionHeading(
                    text: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  SettingMenutiles(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: "Set shopping delivery address ",
                    onTap: () => Get.to(()=>const Address()),
                  ),
                  SettingMenutiles(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: "Add and remove products and move to checkout",
                    onTap: () {},
                  ),
                  SettingMenutiles(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: "In-progress and complete ordres",
                    onTap: () => Get.to(()=>const Order()),
                  ),
                  SettingMenutiles(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: "Withdraw balance ant registered bank account",
                    onTap: () {},
                  ),
                  SettingMenutiles(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: "List all the discounted coupons",
                    onTap: () {},
                  ),
                  SettingMenutiles(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: "Set any type of notification message",
                    onTap: () {},
                  ),
                  SettingMenutiles(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: "Manage data usage and connected account",
                    onTap: () {},
                  ),

                  // App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SectionHeading(
                    text: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SettingMenutiles(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload data to your cloud firebase',
                  ),
                  SettingMenutiles(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on the location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingMenutiles(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingMenutiles(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  // Logout button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.red, width: 2),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Logout",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
