import 'package:flutter/material.dart';
import 'package:tinder_card_swipe/constants/colors.dart';

class CustomChip extends StatelessWidget {
  final String chipLabelText;

  const CustomChip({super.key, required this.chipLabelText});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(chipLabelText),
      backgroundColor: AppColors.chipBgColor,
      labelStyle: TextStyle(
        color: AppColors.secondaryColor.withOpacity(0.8),
        fontWeight: FontWeight.w700,
        fontSize: 15,
      ),
    );
  }
}
