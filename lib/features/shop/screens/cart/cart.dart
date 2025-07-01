import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_comm_app/features/shop/screens/checkout/checkout.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        child: ElevatedButton(
          onPressed: () => Get.to(()=>const Checkout()),
          child: const Text('Checkout \$2000'),
        ),
      ),
    );
  }
}
