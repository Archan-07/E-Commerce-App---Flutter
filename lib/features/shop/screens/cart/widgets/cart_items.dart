import 'package:e_comm_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_comm_app/common/widgets/products/cart/tcart_items.dart';
import 'package:e_comm_app/common/widgets/texts/product_price_text.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddAndRemoveButton = true});

  final bool showAddAndRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const TCartItems(),

            if (showAddAndRemoveButton)
              const SizedBox(height: TSizes.spaceBtwItems),
            if (showAddAndRemoveButton)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Add and remove buttons
                  Row(
                    children: [
                      SizedBox(width: 70),
                      ProductQuantityWithAddAndRemove(),
                    ],
                  ),
                  ProductPriceText(price: '2000'),
                ],
              ),
          ],
        );
      },
    );
  }
}
