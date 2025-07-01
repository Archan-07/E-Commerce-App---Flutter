import 'package:e_comm_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_comm_app/common/widgets/images/circular_image.dart';
import 'package:e_comm_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_comm_app/common/widgets/texts/product_price_text.dart';
import 'package:e_comm_app/common/widgets/texts/product_title_text.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/enums.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductMetadata extends StatelessWidget {
  const ProductMetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Sale Tag
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: TColors.dark),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            //Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const ProductPriceText(price: '175 ', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Title
        const ProductTitleText(title: 'Dark Nike Sports Jacket'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems / 1.5),

            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            CircularImage(
              image: TImages.nikeLogo,
              width: 42,
              height: 42,
              overLayColor: dark ? TColors.white : TColors.black,
            ),
            const BrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
