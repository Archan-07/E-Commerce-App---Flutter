import 'package:e_comm_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_comm_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          items:
              [
                    'Name',
                    'Higher Price',
                    'Lower Price',
                    "Sale",
                    'Newest',
                    "Popularity",
                  ]
                  .map(
                    (options) => DropdownMenuItem(
                      value: options,
                      child: Text(options),
                    ),
                  )
                  .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        GridLayout(
          itemCount: 8,
          itemBuilder: (p0, index) => const ProductCardVertical(),
        ),
      ],
    );
  }
}
