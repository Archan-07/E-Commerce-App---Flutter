import 'package:e_comm_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_comm_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:e_comm_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return VerticalImageText(
            image: TImages.clothIcon,
            title: 'Clothes',
            onTap: () => Get.to(()=>const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
