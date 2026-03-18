import 'package:flutter/material.dart';
import 'animated_section.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return AnimatedSection(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        height: screenHeight / 1.1,
        constraints: const BoxConstraints(
          minHeight: 500.0,
        ),
        child: Stack(
          children: [
            // Background Image (Player)
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              width: MediaQuery.of(context).size.width * 0.35,
              child: Image.asset(
                "assets/my_flutter_avatar.png",
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            // Gradient Overlay for blending
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                    stops: const [0.35, 0.5, 0.7],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
            // Left side content
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hero Text
                    const SizedBox(
                      width: 600,
                      child: Text(
                        "The Official Major Arena Soccer League Fantasy Futbol App",
                        style: TextStyle(
                          fontSize: 56,
                          height: 1.1,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // CTA Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColor.soccerGreen,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Get Started For Free Now",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.chevron_right, size: 24),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    // App Badges
                    Row(
                      children: [
                        _buildAppBadge("Google Play", Icons.play_arrow),
                        const SizedBox(width: 15),
                        _buildAppBadge("App Store", Icons.apple),
                        const SizedBox(width: 15),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.qr_code_2,
                              color: Colors.white, size: 28),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBadge(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text == "App Store" ? "Download on the" : "GET IT ON",
                style: const TextStyle(color: Colors.white, fontSize: 8),
              ),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
