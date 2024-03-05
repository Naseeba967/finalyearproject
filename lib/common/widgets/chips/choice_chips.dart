import 'package:finalyearproject/common/widgets/customShape/container/circular_container.dart';
import 'package:finalyearproject/utils/constant/colors.dart';
import 'package:finalyearproject/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip(
      {super.key,
      required this.text,
      this.onSelected,
      required this.selected});
  final String text;
  final void Function(bool)? onSelected;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    final isColor = HelpersFunction.getColor(text) != null;
    return ChoiceChip(
      label: isColor != null ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? AppColor.white : null),
      avatar: HelpersFunction.getColor(text) != null
          ? const CircularContainer(
              width: 50,
              height: 50,
              backgroundColor: Colors.green,
            )
          : null,
      shape: const CircleBorder(),
      labelPadding: const EdgeInsets.all(0.0),
      padding: const EdgeInsets.all(0),
      selectedColor: Colors.green,
      backgroundColor: Colors.green,
    );
  }
}
