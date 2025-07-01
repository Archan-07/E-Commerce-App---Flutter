import 'package:e_comm_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_comm_app/common/widgets/brands/brand_card.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),

      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        //Brand with Product Count
        children: [
          const BrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          Row(
            children: images
                .map((image) => brandTopProductImagesWidet(context, image))
                .toList(),
          ),
        ],

        //Brand Top three Product images
      ),
    );
  }

  Widget brandTopProductImagesWidet(BuildContext context, String image) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
