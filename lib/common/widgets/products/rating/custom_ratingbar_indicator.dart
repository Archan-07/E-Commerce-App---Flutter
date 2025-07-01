import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class CustomRatingBarIndicator extends StatelessWidget {
  const CustomRatingBarIndicator({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: TColors.grey,
      itemBuilder: (context, index) =>
          const Icon(Iconsax.star1, color: TColors.primary),
    );
  }
}
