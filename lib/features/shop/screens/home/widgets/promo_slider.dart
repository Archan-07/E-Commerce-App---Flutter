import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_comm_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_comm_app/common/widgets/images/rounded_images.dart';
import 'package:e_comm_app/features/shop/controllers/home_controller.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => RoundedImages(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.updateCorousalIndex(index),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  margin: const EdgeInsets.only(right: 10),
                  width: 20,
                  height: 4,
                  backgroundColor: controller.corousalCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
