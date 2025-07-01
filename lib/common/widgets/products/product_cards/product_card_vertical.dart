import 'package:e_comm_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_comm_app/common/widgets/icons/circular_icon.dart';
import 'package:e_comm_app/common/widgets/images/rounded_images.dart';
import 'package:e_comm_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_comm_app/common/widgets/texts/product_price_text.dart';
import 'package:e_comm_app/common/widgets/texts/product_title_text.dart';
import 'package:e_comm_app/features/shop/screens/product_details/product_detail_page.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=>const ProductDetailPage()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //Thumbnail , WishList Button, Discount Tag
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  const RoundedImages(imageUrl: TImages.productImage1),

                  //Sale tag
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

                  //Favorite icon button
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            // --Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Green Nike air shoes",
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  BrandTitleTextWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: ProductPriceText(price: '35.0'),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: dark ? TColors.white : TColors.dark,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(TSizes.productImageRadius),

                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: dark ? TColors.dark : TColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
