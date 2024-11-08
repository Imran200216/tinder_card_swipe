import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_card_swipe/components/custom_app_bar_container.dart';
import 'package:tinder_card_swipe/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text("MAKE MATCH"),
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.secondaryColor,
        ),
        actions: const [
          CustomAppBarContainer(
            containerHeight: 40,
            containerWidth: 40,
            iconColor: AppColors.appBarIconColor,
            iconName: "notification-icon",
            iconHeight: 32,
            iconWidth: 32,
          ),
          SizedBox(
            width: 20,
          ),
          CustomAppBarContainer(
            containerHeight: 40,
            containerWidth: 40,
            iconColor: AppColors.appBarIconColor,
            iconName: "setting-icon",
            iconHeight: 32,
            iconWidth: 32,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 30,
          top: 30,
          right: 20,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                /// card image
                Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1498746607408-1e56960e3bdd?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                /// card gradient
                Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(1.0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                /// card contents

              ],
            )
          ],
        ),
      ),
    );
  }
}
