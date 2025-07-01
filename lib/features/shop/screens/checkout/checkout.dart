import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_comm_app/common/widgets/products/checkout/coupon_code_widget.dart';
import 'package:e_comm_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_comm_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_comm_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_comm_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_comm_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_comm_app/navigation_menu.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Items in cart
              const CartItems(showAddAndRemoveButton: false),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Coupon Textfield
              const CouponCodeWidget(),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Billing Section
              RoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.dark : TColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Payment Method
                    BillingPaymentSection(),
                    // Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        child: ElevatedButton(
          onPressed: () => Get.to(()=>
            SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(()=>const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$2000'),
        ),
      ),
    );
  }
}
