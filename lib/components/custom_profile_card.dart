import 'package:flutter/material.dart';
import 'package:tinder_card_swipe/components/custom_chip.dart';
import 'package:tinder_card_swipe/constants/colors.dart';

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String location;
  final String name;
  final String bio;
  final List<String> interests;

  const ProfileCard({
    super.key,
    required this.imageUrl,
    required this.location,
    required this.name,
    required this.bio,
    required this.interests,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Card image
        Container(
          height: 600,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        /// Card gradient
        Container(
          height: 600,
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

        /// Card contents
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: AppColors.locationColor,
                      size: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      location,
                      style: const TextStyle(
                        color: AppColors.locationColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondaryColor,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  bio,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryColor.withOpacity(0.8),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: interests
                      .map((interest) => CustomChip(chipLabelText: interest))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
