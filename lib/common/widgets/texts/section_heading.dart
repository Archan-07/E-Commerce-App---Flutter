import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    required this.text,
    this.buttonText = 'View all',
    this.showActionButton = true,
    this.onPressed,
  });

  final Color? textColor;
  final String text, buttonText;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          (TextButton(
            onPressed: onPressed,
            child: Text(buttonText, style: const TextStyle(color: Colors.blue)),
          )),
      ],
    );
  }
}
