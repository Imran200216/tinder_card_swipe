import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_card_swipe/components/custom_app_bar_container.dart';
import 'package:tinder_card_swipe/components/custom_btn.dart';
import 'package:tinder_card_swipe/components/custom_profile_card.dart';
import 'package:tinder_card_swipe/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [
      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1627349864724-645aea4fbda0?q=80&w=2012&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "New York, USA",
        name: "Alex",
        bio:
            "📸 Photographer and storyteller, capturing moments one click at a time.",
        interests: ["Photography", "Travel", "Coffee"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3",
        location: "Paris, France",
        name: "Marie",
        bio: "🎨 Art enthusiast and lover of all things vintage.",
        interests: ["Art", "History", "Vintage"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1527723503749-9e61addd1b3e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "Tokyo, Japan",
        name: "Kenji",
        bio: "🍣 Foodie exploring the culinary wonders of the world.",
        interests: ["Food", "Travel", "Culture"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1700518947453-3f4ea689d415?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "Berlin, Germany",
        name: "Sophie",
        bio:
            "🎵 Music lover with a passion for live performances and festivals.",
        interests: ["Music", "Festivals", "Travel"],
      ),

      ////
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1617058848582-5d852ad5be2a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "Sydney, Australia",
        name: "Liam",
        bio: "🌊 Surfer and ocean advocate, living for the waves.",
        interests: ["Surfing", "Nature", "Adventure"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1645557193699-b70340288008?q=80&w=1984&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "Cape Town, South Africa",
        name: "Ayesha",
        bio: "🌄 Adventure seeker and wildlife photographer.",
        interests: ["Wildlife", "Photography", "Hiking"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1624233599130-8f9a318988ab?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "Rome, Italy",
        name: "Marco",
        bio: "🍝 Culinary artist with a love for authentic Italian cuisine.",
        interests: ["Cooking", "Travel", "Food"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1618375419595-91e66af79c59?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "Rio de Janeiro, Brazil",
        name: "Ana",
        bio: "💃 Passionate dancer and lover of Brazilian culture.",
        interests: ["Dance", "Culture", "Beach"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1691692677524-7ee6b93adffd?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "Barcelona, Spain",
        name: "Carlos",
        bio: "🏄‍♂️ Thrill-seeker and beach lover, always chasing the sun.",
        interests: ["Beach", "Adventure", "Music"],
      ),

      ///
      const ProfileCard(
        imageUrl:
            "https://images.unsplash.com/photo-1617922236117-2697cb394593?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        location: "London, UK",
        name: "Emma",
        bio: "📚 Bookworm and tea enthusiast, finding magic in the pages.",
        interests: ["Books", "Tea", "History"],
      ),
    ];

    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: const Text("MAKE MATCH"),
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryColor,
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
            /// card image
            Flexible(
              child: CardSwiper(
                cardBuilder: (context, index, horizontalOffsetPercentage,
                        verticalOffsetPercentage) =>
                    cards[index],
                cardsCount: cards.length,
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            /// person interest btn
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBtn(
                  svgIconHeight: 40,
                  svgIconWidth: 40,
                  svgIconName: "clear-icon",
                  svgIconColor: AppColors.clearIconColor,
                ),
                CustomBtn(
                  svgIconHeight: 40,
                  svgIconWidth: 40,
                  svgIconName: "fire-icon",
                ),
                CustomBtn(
                  svgIconHeight: 36,
                  svgIconWidth: 36,
                  svgIconName: "favorite-icon",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
