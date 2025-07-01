import 'package:e_comm_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_comm_app/utils/constants/colors.dart';
import 'package:e_comm_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text);
    return ChoiceChip(
      label: isColor != null ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: isColor != null
          ? CircularContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!,
            )
          : null,
      shape: isColor != null ? const CircleBorder() : null,
      labelPadding: isColor != null ? const EdgeInsets.all(0) : null,
      padding: isColor != null ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor != null ? THelperFunctions.getColor(text) : null,
    );
  }
}
