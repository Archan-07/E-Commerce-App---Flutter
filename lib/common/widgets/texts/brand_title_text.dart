import 'package:e_comm_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.maxLine = 1,
    this.textColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLine;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      //check which brand size is required and set that style
      style: brandTextSizes == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : brandTextSizes == TextSizes.medium
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
          : brandTextSizes == TextSizes.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color: textColor)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: textColor),
    );
  }
}
