import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/constants/sizes.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: color, size: size),
        ),
      ),
    );
  }
}
