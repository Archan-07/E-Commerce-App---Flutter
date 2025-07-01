import 'package:e_comm_app/common/widgets/chips/custom_choice_chip.dart';
import 'package:e_comm_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_comm_app/common/widgets/texts/product_price_text.dart';
import 'package:e_comm_app/common/widgets/texts/product_title_text.dart';
import 'package:e_comm_app/common/widgets/texts/section_heading.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing & Discription
        RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              // Title, Price and Stock status
              Row(
                children: [
                  const SectionHeading(
                    text: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          const ProductPriceText(price: '25'),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock',
                            smallSize: true,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),

                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //Variation Description
              const ProductTitleText(
                title:
                    'This is the description of the product and it can go upto 4 lines max',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SectionHeading(text: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                CustomChoiceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (p0) {},
                ),
                CustomChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (p0) {},
                ),
                CustomChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (p0) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(text: 'Sizes', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (p0) {},
                ),
                CustomChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (p0) {},
                ),
                CustomChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (p0) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
