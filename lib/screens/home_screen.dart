import 'package:flutter/material.dart';
import 'package:tinder_card_swipe/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        leading: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.secondaryColor,
            border: Border.all(
              color: AppColors.containerBorderColor,
              width: 1.2,
            ),
          ),
          child: Center(
            child: Image.asset(
              "assets/images/png/fire-img.png",
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 30,
          top: 30,
          right: 20,
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
