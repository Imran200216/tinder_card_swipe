import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_card_swipe/constants/colors.dart';

class CustomBtn extends StatelessWidget {
  final String svgIconName;
  final Color? svgIconColor;
  final double svgIconHeight;
  final double svgIconWidth;

  const CustomBtn({
    super.key,
    required this.svgIconName,
    this.svgIconColor,
    required this.svgIconHeight,
    required this.svgIconWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.secondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            // Slightly darker shadow
            offset: const Offset(2, 2),
            // Slight offset to create depth
            blurRadius: 4,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            // Softer grey shadow
            offset: const Offset(-2, -2),
            // Offset to enhance the effect
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: SvgPicture.asset(
          "assets/images/svg/$svgIconName.svg",
          height: svgIconHeight,
          width: svgIconWidth,
          color: svgIconColor,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
