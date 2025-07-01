import 'package:e_comm_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_comm_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_comm_app/common/widgets/icons/circular_icon.dart';
import 'package:e_comm_app/common/widgets/images/rounded_images.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 3),
                child: Center(
                  child: Image(image: AssetImage(TImages.productImage3)),
                ),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: 24,
              child: SizedBox(
                height: 80,

                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) =>
                      RoundedImages(
                        backgroundColor: dark
                            ? TColors.darkerGrey
                            : TColors.light,
                        width: 80,
                        padding: const EdgeInsets.all(TSizes.sm),
                        border: Border.all(color: TColors.primary),
                        imageUrl: TImages.productImage1,
                      ),

                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 4,
                ),
              ),
            ),
            const CustomAppbar(
              showBackArrow: true,
              actions: [CircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
