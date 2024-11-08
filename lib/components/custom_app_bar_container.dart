import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tinder_card_swipe/constants/colors.dart';

class CustomAppBarContainer extends StatelessWidget {
  final String iconName;
  final double iconHeight;
  final double iconWidth;
  final Color? iconColor;
  final double containerHeight;
  final double containerWidth;

  const CustomAppBarContainer({
    super.key,
    required this.iconName,
    required this.iconHeight,
    required this.iconWidth,
    this.iconColor,
    required this.containerHeight,
    required this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.secondaryColor,
        border: Border.all(
          color: AppColors.containerBorderColor,
          width: 1.2,
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          "assets/images/svg/$iconName.svg",
          height: iconHeight,
          width: iconWidth,
          color: iconColor,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
